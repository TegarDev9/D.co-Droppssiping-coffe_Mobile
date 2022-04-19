import 'package:flutter/material.dart';
import 'package:login_register/pages/Drawwer.dart';
import 'package:login_register/shared/shared.dart';

class MainPage extends StatelessWidget {
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
            backgroundColor: whiteColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/home_icon.png',
                  width: 21,
                ),
                label: 'Hone',
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
                label: 'chat',
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

    return Scaffold(
      backgroundColor: primaryColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: custumBottomNav(),
      body: Image.asset('assets/images/Rectangle_11.png'),
      drawer: DrawerScreen(),
    );
  }
}
