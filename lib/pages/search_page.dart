import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/pages/products_details_page.dart';
import 'package:food_delivery/view_models/cubit/search_cubit.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _formKey=GlobalKey<FormState>();
  final _searchController=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    final args= ModalRoute.of(context)!.settings.arguments as String;
    final size=MediaQuery.of(context).size;
    final cubit=BlocProvider.of<SearchCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:24.0),
            child: Column(
              children: [
                 const SizedBox(height: 16,),
                 TextFormField(
                  controller: _searchController,
                  validator: (value)=>value!=null&&value.isNotEmpty?null:'Please enter any keyword to search for!',
                  decoration: InputDecoration(
                    hintText: 'Find your food ...',
                    suffixIcon: IconButton(
                      onPressed: ()=>_formKey.currentState!.validate()? cubit.search(_searchController.text):null, 
                      icon: const Icon(Icons.search),
                      ),
                    contentPadding: const EdgeInsets.all(16),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      
                    )
                  ),
                 ),

                 const SizedBox(height: 16,),
                 Expanded(
                  child: BlocBuilder<SearchCubit, SearchState>(
                    bloc: cubit,
                    buildWhen: (previous, current) => 
                    current is SearchLoading||
                    current is SearchLoaded||
                    current is searchError,
                    builder: (context, state) {
                      if (state is SearchLoading) {
                        return const CircularProgressIndicator.adaptive();
                      } else if (state is searchError) {
                        return Text(state.message);
                      } else if (state is SearchLoaded) {
                        final FoodList=state.foodList;
                            return ListView.builder(
                              itemCount: FoodList.length,
                              itemBuilder: (_, index) {
                                
                                return  GridView.builder(
                                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: size.width>1100? 5: size.width>800 ? 4:  2,
                                      mainAxisSpacing: 18,
                                      crossAxisSpacing: 18,
                                      ),
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: FoodList.length,
                                      itemBuilder: (context,index)=>

                                        LayoutBuilder(
                                          builder: (context, Constraints) {
                                            return InkWell(
                                              onTap: (){
                                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetailsPage(foodItem: FoodList[index],))).then((value) => 
                                                setState(() {
                                                  // if(SelectedIndex!=null){
                                                  // final selectedCategory=Categories[SelectedIndex!];
                                                  // FoodList=products.where((element) => element.category==selectedCategory.name).toList();
                                                //}
                                                }));
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(16.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(vertical:6.0),
                                                  child: Stack(
                                                    alignment: AlignmentDirectional.center,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          const SizedBox(height:5.0),
                                                          Image.network(FoodList[index].imgURL,
                                                          height: Constraints.maxHeight*0.5,
                                                          width: Constraints.maxWidth*0.4,
                                                        
                                                          ),
                                                          Text(
                                                            FoodList[index].name,
                                                            style: TextStyle(
                                                              fontSize: Constraints.maxHeight*0.09,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                            
                                                          ),
                                                          Text(
                                                            FoodList[index].category,
                                                            style: const TextStyle(
                                                              color: Colors.grey,
                                                            ),
                                                            ),
                                                            const SizedBox(height: 4.0,),
                                                          Text(
                                                            '\$${FoodList[index].price}',
                                                            style:TextStyle(
                                                              color:Color.fromARGB(231, 194, 44, 134),
                                                              fontWeight: FontWeight.bold,
                                                              fontSize: Constraints.maxHeight*0.07,
                                                            ),
                                                            ),
                                                        ],
                                                      ),
                                                                        
                                                      PositionedDirectional(
                                                        top: 0,
                                                        end: 0,
                                                        child: IconButton(
                                                          onPressed: (){
                                                            setState(() {
                                                              // filteredFood[index]=filteredFood[index].copyWith(isFavorite: !filteredFood[index].isFavorite);
                                                              // final SelectedFoodItem=products.firstWhere((element) => element.id==filteredFood[index].id);
                                                              // final SelectedFoodIndex=products.indexOf(SelectedFoodItem);
                                                              // products[SelectedFoodIndex]=filteredFood[index];
                                                            });
                                                          }, 
                                                          icon:Icon(FoodList[index].isFavorite==false?  Icons.favorite_border:Icons.favorite),
                                                          color:const  Color.fromARGB(179, 175, 9, 95),
                                                          ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                        );
                                          }
                                        ),
                                      
                                );
                              },
                            ); 
                      } else {
                        return const Center(child: Text('Nothing yet, you can search for anything!'),);
                      }
                     
                    },
                  ),
                  )
            ]),
          ),
        ),
      ),
    );
  }
}