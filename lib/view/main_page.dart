import 'package:firstprojectforportfolio/resources/color.dart';
import 'package:firstprojectforportfolio/view/screens/add_screen.dart';
import 'package:firstprojectforportfolio/view/screens/cart_screen.dart';
import 'package:firstprojectforportfolio/view/screens/home_screen.dart';
import 'package:firstprojectforportfolio/view/screens/setting_screen.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget currentScreen = const HomeScreen();
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.white,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = const HomeScreen();
                    activeTab = 0;
                  });
                },
                child: Icon(
                  Icons.home_outlined,
                  color: activeTab == 0 ? AppColor.tabColor : Colors.grey,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = const CartScreen();
                    activeTab = 1;
                  });
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: activeTab == 1 ? AppColor.tabColor : Colors.grey,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(
                    () {
                      currentScreen = const SettingScreen();
                      activeTab = 2;
                    },
                  );
                },
                child: Icon(
                  Icons.settings_outlined,
                  color: activeTab == 2 ? AppColor.tabColor : Colors.grey,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(
                    () {
                      currentScreen = const AddScreen();
                      activeTab = 3;
                    },
                  );
                },
                child: Icon(
                  Icons.add_outlined,
                  color: activeTab == 3 ? AppColor.tabColor : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
