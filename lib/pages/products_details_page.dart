import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home_page.dart';
import 'package:food_delivery/widgets/products_details_property.dart';

import '../models/food_item.dart';

class ProductDetailsPage extends StatefulWidget {
    FoodItem foodItem;
    ProductDetailsPage({super.key, required this.foodItem});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int quantity=1;
  void _decreaseQuantity(){
     setState(() {
      if(quantity>1){
         quantity--;
      }
       
     });
  }
void _increaseQuantity(){
  setState(() {
       quantity++;
     });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        
        title:  Text(widget.foodItem.name),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
        actions: [
          IconButton(
            onPressed: (){
              setState(() {
                widget.foodItem=widget.foodItem.copyWith(isFavorite: !widget.foodItem.isFavorite);
                final SelectedFoodItem=products.firstWhere((element) => element.id==widget.foodItem.id);
                final SelectedFoodIndex=products.indexOf(SelectedFoodItem);
                products[SelectedFoodIndex]=widget.foodItem;
                
              });
            }, 
            icon:Icon(widget.foodItem.isFavorite==false?  Icons.favorite_border:Icons.favorite),
            color:const  Color.fromARGB(179, 175, 9, 95),
          ),
          const SizedBox(width: 8,),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                      children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Image.network(
                      widget.foodItem.imgURL,
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              
                const SizedBox(height: 32,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                            widget.foodItem.name,
                            style: const TextStyle(
                               fontSize: 24,
                               fontWeight: FontWeight.bold,
                            ),
                            ),
                           Text(
                            widget.foodItem.category,
                            style: const TextStyle(
                               fontSize: 16,
                               fontWeight: FontWeight.w400,
                               color: Colors.black45,
                            ),
                            ),
                        ],
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed:quantity>1? _decreaseQuantity:null,
                               icon: const Icon(Icons.remove)
                               ),
                            Text(quantity.toString()),
                            IconButton(
                              onPressed: _increaseQuantity,
                               icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                        )
                    ],
                  ),
              
                  const SizedBox(height: 32),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     ProductDetailsPropertyPage(title: "Size", value: widget.foodItem.Size),
                     const SizedBox(
                      height: 40,
                      child: VerticalDivider(),
                      ),
                     ProductDetailsPropertyPage(title: "Calories", value: widget.foodItem.Calories),
                    const SizedBox(
                      height: 40,
                      child: VerticalDivider(),
                      ),
                     ProductDetailsPropertyPage(title: "Cooking", value: widget.foodItem.Cooking),
                    ],
                  ),
              
                  const SizedBox(height: 32),
              
                   Container(
                    alignment: AlignmentDirectional.centerStart,
                     child: Text(
                      widget.foodItem.description,
                         style:  const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                      
                                     ),
                   ),
                  
                    ],
                  ),
                )
                
                
                      ],
                    ),
              ),
            ),
             const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      " \$ ${(widget.foodItem.price * quantity).toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color:Color.fromARGB(231, 194, 44, 134),
                      ),
                      ),
                  ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(231, 194, 44, 134),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )
                        ),
                        child: const Text("Checkout"),
                        ),
                    ),
                ],
              ),
            ),
         
          ],
        ),
      )   
    );
  }
}