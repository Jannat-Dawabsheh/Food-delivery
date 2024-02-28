import 'package:flutter/material.dart';
import 'package:food_delivery/pages/coupons_page.dart';
import 'package:food_delivery/pages/order_page.dart';

class ProfileListTile extends StatelessWidget {
  final IconData leadingIcon;
  final String ListTitle;
  final int index;
  const ProfileListTile({super.key, required this.leadingIcon, required this.ListTitle, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
            onTap: (){
             if(index==1){
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) => OrderPage())));
             }else if(index==2){
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) => CouponsPage())));
             }

            },
            leading: Icon(
              leadingIcon,
               size: 30,
               ),
            title: Text(
               ListTitle,
               style: const TextStyle(
                 fontWeight: FontWeight.w600,
                  fontSize: 18
                  ),
            ),
            trailing:const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
              ),

           );
  }
}