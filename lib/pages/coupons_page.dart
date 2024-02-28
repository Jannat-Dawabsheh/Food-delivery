import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/coupons_list.dart';

class CouponsPage extends StatelessWidget {
  const CouponsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child:Column(
            children: [
              CouponsList(img: 'https://cutewallpaper.org/24/hamburger-png/download-hamburger-free-png-transparent-image-and-clipart.png', discount: "30", date: "Valid until: 15 October 2024"),
              SizedBox(height: 10,),
              CouponsList(img: 'https://static.wixstatic.com/media/183701_1fdc6c4b82964a8085e739e3d9aa9bd0~mv2.png/v1/fill/w_640,h_410,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/183701_1fdc6c4b82964a8085e739e3d9aa9bd0~mv2.png', discount: "20", date: "Valid until: 10 October 2024"),  
            ],
          )
          
          ),
      ),
    );
    
  }
}

