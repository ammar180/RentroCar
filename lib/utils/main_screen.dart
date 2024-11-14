import 'package:flutter/material.dart';
import 'package:rentro_car/features/authentication/screens/profile_page_widget.dart';
import 'package:rentro_car/utils/constants/colors.dart';

class MainScreen extends StatefulWidget {
  final List<Widget> screensList = const [
    ProfileWidget(),
    ProfileWidget(), // my cars
    ProfileWidget(), // home
    ProfileWidget(), // favorite
    ProfileWidget(), // notifications
  ];

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // custom app bar
      //appBar: AppBar(),
      // screens container
      body: IndexedStack(
        index: _currentIndex,
        children: widget.screensList,
      ),
      // custom app bar
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => _currentIndex = index),
        currentIndex: _currentIndex,
        elevation: 0,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.iconBar,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.dark,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.car_crash), label: "My Cars"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
        ],
      ),
    );
  }
}
