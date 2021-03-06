import 'package:flutter/material.dart';
import 'package:login_register/pages/Drawwer.dart';

import 'package:login_register/pages/checkout_page.dart';
import 'package:login_register/pages/checkout_success_page.dart';
import 'package:login_register/pages/dashboard.dart';
import 'package:login_register/pages/edit_profile_page.dart';
import 'package:login_register/pages/pages.dart';
import 'package:login_register/pages/splash_page.dart';
import 'package:login_register/pages/transaction_page.dart';
import 'package:login_register/providers/auth_provider.dart';
import 'package:login_register/providers/cart_provider.dart';
import 'package:login_register/providers/product_provider.dart';
import 'package:login_register/providers/transaction_provider.dart';
import 'package:login_register/providers/wishlist_provider.dart';
import 'package:login_register/shared/shared.dart';
import 'package:login_register/widget/cart_card.dart';
import 'package:login_register/widget/cart_card.dart';

import 'package:login_register/widget/cart_page.dart';
import 'package:login_register/widget/checkout_card.dart';

import 'package:login_register/widget/product_page.dart';
import 'package:login_register/widget/whislist_card.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Productprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionProvider(),
        ),
      ],
      child: MaterialApp(
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
          '/Drawwer': (context) => DrawerScreen(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
          '/transaction-page': (context) => TransactionPage(),
        },
      ),
    );
  }
}
