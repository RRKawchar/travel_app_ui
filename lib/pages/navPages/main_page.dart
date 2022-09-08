import 'package:flutter/material.dart';
import 'package:travel_app_ui/pages/navPages/bar_item_page.dart';
import 'package:travel_app_ui/pages/navPages/home_page.dart';
import 'package:travel_app_ui/pages/navPages/profile_page.dart';
import 'package:travel_app_ui/pages/navPages/search_page.dart';
import 'package:travel_app_ui/widgets/app_colors.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // const MainPage({Key? key}) : super(key: key);
  List page=[
    HomePage(),
    BarItemPage(),
    SearchPage(),
    ProfilePage()

  ];

  void onTap(int index){
  setState(() {
    _currentIndex=index;
  });

  }

  var _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhit,
      body:page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.colorWhit,
         currentIndex: _currentIndex,
         onTap: onTap,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.colorBlack,
        unselectedItemColor:AppColors.colorgray1 ,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.apps),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart),label: "Bar item"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

        ],
      ),
    );
  }
}
