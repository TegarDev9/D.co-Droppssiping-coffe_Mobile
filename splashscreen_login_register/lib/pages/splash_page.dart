import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushNamed(context, '/welcome-pages'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          width: 150,
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/login.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
