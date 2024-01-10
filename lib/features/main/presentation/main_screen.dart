import 'package:fake_store/features/home/presentation/home_page.dart';
import 'package:flutter/material.dart';

import '../../profile/presentation/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var currentIndex = 0;
  var pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          SizedBox(),
          ProductScreen(),
          SizedBox(),
          SizedBox(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          currentIndex = index;
          setState(() {
            pageController.animateToPage(index, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.green,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.green,

        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop),label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel_outlined),label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.saved_search),label: "Saved"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

        ],
      ),
    );
  }
}
