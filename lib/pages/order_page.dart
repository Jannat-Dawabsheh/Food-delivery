import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/order_summary_list.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order summary"),
      ),
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                   OrderSummaryList(title: "Beef Burger", size: "Medium", Calories: "150 Kcal", price: 6.99, img:'https://cutewallpaper.org/24/hamburger-png/download-hamburger-free-png-transparent-image-and-clipart.png', count: 1),
                   Divider(
                    indent: 20,
                    endIndent: 20,
                  ),
                   OrderSummaryList(title: "Lazania", size: "small", Calories: "80 Kcal", price: 7.99, img:'https://static.wixstatic.com/media/183701_1fdc6c4b82964a8085e739e3d9aa9bd0~mv2.png/v1/fill/w_640,h_410,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/183701_1fdc6c4b82964a8085e739e3d9aa9bd0~mv2.png',count: 3 ),
                   Divider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  OrderSummaryList(title: "Fried Chicken", size: "Medium", Calories: "200 Kcal", price: 11.99, img:'https://static.vecteezy.com/system/resources/previews/021/665/568/original/delicious-grilled-chicken-cutout-png.png',count: 2),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
              
                    Text(
                      "\$54.94",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

               SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
              
                    Text(
                      "\$5.00",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              

               SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
              
                    Text(
                      "\$59.94",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),

              Spacer(),
              MaterialButton(
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Submit Order",
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ) ,
                    ),
                ),
                color: Color.fromARGB(231, 194, 44, 134),
                height: 20,
                minWidth: MediaQuery.sizeOf(context).width,
              
              ),
            ],
          ),
        ),
      ),
    );
     
  }
}