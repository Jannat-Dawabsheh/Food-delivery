import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/profile_List_tile.dart';

import '../widgets/profile_page_details.dart';
class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child:  Center(
       child: Column(
        children: [
           SizedBox(height: 24,),
          CircleAvatar(
            radius: size.width>800? size.height*0.2: size.height*0.1,
            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaizazwQtqYtxIz6-5scSWz97PERGqBBDpZA&usqp=CAU"),
          
          ),
            SizedBox(height: 24,),
           Text(
            "Jannat Dawabsheh",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
           ),

             SizedBox(height: 8),
           Text(
            "Jannatbassam2001@gmail.com",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black45,
            ),
           ),
           SizedBox(height: 24,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProfilePageDetails(title: "Orders", value: 3),
              SizedBox(
                height: 45,
                child: VerticalDivider()
                ),
              ProfilePageDetails(title: "Coupons", value: 2),
              
            ],
           ),
            SizedBox(height: 24,),
            Divider(
            indent: 20,
            endIndent: 20,
           ),
           ProfileListTile(leadingIcon: Icons.shopping_cart_outlined, ListTitle: "Orders", index: 1,),
           Divider(
            indent: 20,
            endIndent: 20,
           ),
           ProfileListTile(leadingIcon: Icons.wallet_giftcard_rounded, ListTitle: "Coupons", index: 2,),
           Divider(
            indent: 20,
            endIndent: 20,
           ),
        ],
       ),
      ),
    );
  }
}