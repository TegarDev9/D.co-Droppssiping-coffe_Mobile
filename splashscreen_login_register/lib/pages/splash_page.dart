import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_register/providers/product_provider.dart';
import 'package:login_register/shared/shared.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    getInit();
    super.initState();
  }

  getInit() async {
    await Provider.of<Productprovider>(context(), listen: false).getProducts();
    Navigator.pushNamed(context(), '/welcome-pages');
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
