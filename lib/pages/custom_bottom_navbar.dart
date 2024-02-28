import 'package:flutter/material.dart';
import 'package:food_delivery/pages/favorite.dart';
import 'package:food_delivery/pages/home_page.dart';
import 'package:food_delivery/pages/profile.dart';
class CustomNavbar extends StatefulWidget {
  const CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  int selectedIndex=0;
  void onItemTapped(int index){
     setState(() {
       selectedIndex=index;
     });
  }
  List<Widget>widgetBuilder=[
      HomePage(),
      favoritePage(),
      profilePage(),
  ];
   

  
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: widgetBuilder[selectedIndex],
      bottomNavigationBar: size.width>800? null:  BottomNavigationBar(
       currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,), label: 'Home', ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,), label: 'favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person, ), label: 'profile'),
          
        ],
        onTap: onItemTapped,

        ),
    );
  }
}