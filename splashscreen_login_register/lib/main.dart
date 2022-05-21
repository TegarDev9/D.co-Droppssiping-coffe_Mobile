import 'package:flutter/material.dart';
import 'package:login_register/pages/Drawwer.dart';
import 'package:login_register/pages/dashboard.dart';
import 'package:login_register/pages/detail_chat.dart';
import 'package:login_register/pages/pages.dart';
import 'package:login_register/pages/splash_page.dart';
import 'package:login_register/shared/shared.dart';
import 'package:login_register/widget/product2_page.dart';
import 'package:login_register/widget/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: ColorPalette.brownColor,
        primaryColor: primaryColor,
        canvasColor: Colors.transparent,
      ),
      routes: {
        '/': (context) => SplashPage(),
        '/welcome-pages': (context) => WellcomePage(),
        '/dashboard': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
        '/product': (context) => ProductPage(),
        '/product2': (context) => ProductPage2(),
        '/Drawwer': (context) => DrawerScreen(),
      },
    );
  }
}
