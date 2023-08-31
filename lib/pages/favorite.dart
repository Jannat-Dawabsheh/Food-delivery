import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
class favoritePage extends StatefulWidget {
  const favoritePage({super.key});

  @override
  State<favoritePage> createState() => _favoritePageState();
}

class _favoritePageState extends State<favoritePage> {
   List<FoodItem>FavFood= products.where((element) => element.isFavorite==true).toList();
  @override
  Widget build(BuildContext context) {
   
     if(FavFood.isEmpty){
            return const Center(
              child:  Text(
                "Empty Favorite List!",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 142, 141, 141),
                ),
              ),
            );
          }else{
            return SafeArea(
              
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: FavFood.length,
                itemBuilder: (context,index){
                
                  return Card(
                  shadowColor: Colors.pink,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Image.network(
                        FavFood[index].imgURL,
                        height: 100,
                        width: 60,
                        fit: BoxFit.fill,
                      ),
                      title: Text(
                        FavFood[index].name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(179, 133, 24, 80),
                        ),
                      ),
                      subtitle: Text(
                        '${FavFood[index].category} - \$${FavFood[index].price}  ',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: (){
                          setState(() {
                             FavFood[index]=FavFood[index].copyWith(isFavorite: !FavFood[index].isFavorite);
                             final SelectedFoodItem=products.firstWhere((element) => element.id==FavFood[index].id);
                             final SelectedFoodIndex=products.indexOf(SelectedFoodItem);
                             products[SelectedFoodIndex]=FavFood[index];
                          });
                         
                        }, 
                        icon: Icon(FavFood[index].isFavorite==true?Icons.favorite:Icons.favorite_border),
                        color:const  Color.fromARGB(179, 175, 9, 95),),
                    ),
                  ),
                  );
                },),
            );
          }
  }
}