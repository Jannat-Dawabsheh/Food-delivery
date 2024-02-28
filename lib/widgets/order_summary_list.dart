import 'package:flutter/material.dart';

class OrderSummaryList extends StatelessWidget {
  final String title;
  final String size;
  final String Calories;
  final double price;
  final String img;
  final int count;
  const OrderSummaryList({super.key, required this.title, required this.size, required this.Calories, required this.price, required this.img, required this.count});

  @override
  Widget build(BuildContext context) {
    return ListTile(
                      
                      onTap: (){},
                      leading: Image.network(img, width: 70,),
                      title: Text(
                        "$count × $title",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                            fontSize: 18
                            ),
                      ),
                      subtitle: Text(
                        "         $size | $Calories",
                      ),
                      trailing:Text(
                        "\$${price* count}",
                        style: TextStyle(
                          color: Color.fromARGB(231, 194, 44, 134),
                          fontSize: 16,
                        ),
                        ),
                    );
  }
}