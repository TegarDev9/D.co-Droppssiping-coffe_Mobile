import 'package:flutter/material.dart';
import 'package:login_register/pages/Drawwer.dart';
import 'package:login_register/pages/category_page.dart';
import 'package:login_register/pages/chat_page.dart';

import 'package:login_register/pages/home_page.dart';
import 'package:login_register/pages/profile_page.dart';
import 'package:login_register/pages/whishlist_page.dart';
import 'package:login_register/shared/shared.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget custumBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            backgroundColor: whiteColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/home_icon.png',
                  width: 21,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/categori_icon.png',
                  width: 20,
                ),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/chat_icon.png',
                  width: 20,
                ),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/heart_icon.png',
                  width: 20,
                ),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/profil_icon.png',
                  width: 18,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      );
    }

    body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return CategoryPage();
          break;
        case 2:
          return ChatPage();
          break;
        case 3:
          return WhishlistPage();
          break;
        case 4:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: primaryColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: custumBottomNav(),
      body: body(),
      // body: Image.asset('assets/images/Rectangle_11.png'),
      drawer: DrawerScreen(),
    );
  }
}
