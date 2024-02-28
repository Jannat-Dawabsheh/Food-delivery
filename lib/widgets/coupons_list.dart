import 'package:flutter/material.dart';

class CouponsList extends StatelessWidget {
  final String img;
  final String discount;
  final String date;
  const CouponsList({super.key, required this.img, required this.discount, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: double.infinity,
                height: 130,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color.fromARGB(255, 169, 86, 150),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Image.network( 
                      img,
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                      ),
                   
                     Column(
                      children: [
                         const Text(
                          "FOOD VOUCHER",
                          style:TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellowAccent
                          ),
                          ),
                          Text(
                          "${discount} % off",
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                          ),
                         Text(
                          date,
                          style:const TextStyle(
                            fontSize: 14,
                            color: Colors.yellowAccent
                          ),
                         ),
                        
                      ],
                    ),
                
                   
                   ], 
                  ),
                ),
              );
  }
}