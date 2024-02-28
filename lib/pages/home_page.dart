import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_delivery/models/category_item.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/pages/products_details_page.dart';
import 'package:food_delivery/utils/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? SelectedIndex;
  late List<FoodItem>filteredFood;
  
  @override
  void initState() {
    super.initState();
    filteredFood=products;
  }
  @override
  Widget build(BuildContext context) {
  final _formKey=GlobalKey<FormState>();
  final _searchController=TextEditingController();
    final size=MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Icon(Icons.menu),
                        )
                        ),
                    ),
                       const Column(
                         children: [
                           Text(
                            "Current Location",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                            ),
                           Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color.fromARGB(255, 27, 133, 30),
                                ),
                                SizedBox(width: 2,),
                              Text(
                                "Nablus, Palestine",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                                )
                            ],
                           )
                         ],
                       ),
                    InkWell(
                      onTap:(){},
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Icon(Icons.notifications),
                        )
                        ),
                    ),
                  ],
                ),
                const SizedBox(height:25.0),
                
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                 
                  child: Image.network(
                    
                    'https://img.freepik.com/premium-vector/free-vector-luxury-food-social-media-promotion-banner-post-design-illustration_745688-149.jpg',
                     height: size.width>800?size.height*0.45: size.height*0.2,
                     width: double.infinity,
                     fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 16.0,),
                 Form(
                  key: _formKey,
                   child: TextFormField(
                    controller: _searchController,
                    validator: (value)=>value!=null&&value.isNotEmpty?null:'Please enter any keyword to search for!',
                    decoration: InputDecoration(
                      suffixIcon:  IconButton(
                        icon: const Icon(Icons.search, color: Colors.grey),
                        onPressed: (){_formKey.currentState!.validate()?Navigator.pushNamed(context, AppRoutes.search, arguments: _searchController.text ) :null;debugPrint(_searchController.text);} 
                        ),
                      hintText:'Find your food ...',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                        ),
                    ),
                    
                                   ),
                 ),
                const SizedBox(height: 25.0,),
                  SizedBox(
                  height: size.height*0.15,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Categories.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsetsDirectional.only(end:10.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            if(SelectedIndex==null || SelectedIndex!=index){
                               SelectedIndex=index;
                            }else{
                              SelectedIndex=null;
                              filteredFood=products;
                            }
                            
                          });
                          if(SelectedIndex!=null){
                            final selectedCategory=Categories[SelectedIndex!];
                            filteredFood=products.where((element) => element.category==selectedCategory.name).toList();
                          }
                          
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:index==SelectedIndex ?Color.fromARGB(179, 142, 13, 79): Colors.white,
                            borderRadius: BorderRadius.circular(16.0),
                                          
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Categories[index].assetPath,
                                  height: 45,
                                  width: 45,
                                  
                                  color: index==SelectedIndex ?Colors.white:null,
                                  ),
                                  const SizedBox(height: 4.0,),
                                Text(
                                  Categories[index].name,
                                  style: TextStyle(
                                    color:index==SelectedIndex ?Colors.white: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                 
                                  ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height:25.0),
                GridView.builder(
                   gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: size.width>1100? 5: size.width>800 ? 4:  2,
                      mainAxisSpacing: 18,
                      crossAxisSpacing: 18,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: filteredFood.length,
                      itemBuilder: (context,index)=>

                         LayoutBuilder(
                           builder: (context, Constraints) {
                             return InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetailsPage(foodItem: filteredFood[index],))).then((value) => 
                                setState(() {
                                  if(SelectedIndex!=null){
                                  final selectedCategory=Categories[SelectedIndex!];
                                  filteredFood=products.where((element) => element.category==selectedCategory.name).toList();
                                }}));
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
                                          Image.network(filteredFood[index].imgURL,
                                          height: Constraints.maxHeight*0.5,
                                          width: Constraints.maxWidth*0.4,
                                         
                                          ),
                                          Text(
                                            filteredFood[index].name,
                                            style: TextStyle(
                                              fontSize: Constraints.maxHeight*0.09,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            
                                          ),
                                          Text(
                                            filteredFood[index].category,
                                            style: const TextStyle(
                                              color: Colors.grey,
                                            ),
                                            ),
                                            const SizedBox(height: 4.0,),
                                          Text(
                                            '\$${filteredFood[index].price}',
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
                                              filteredFood[index]=filteredFood[index].copyWith(isFavorite: !filteredFood[index].isFavorite);
                                              final SelectedFoodItem=products.firstWhere((element) => element.id==filteredFood[index].id);
                                              final SelectedFoodIndex=products.indexOf(SelectedFoodItem);
                                              products[SelectedFoodIndex]=filteredFood[index];
                                            });
                                          }, 
                                          icon:Icon(filteredFood[index].isFavorite==false?  Icons.favorite_border:Icons.favorite),
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
                      
                ),
        
              ],
            ),
          ),
        ),
      );
  }
}