import 'package:flutter/material.dart';
import 'package:login_register/models/user_model.dart';
import 'package:login_register/models/product_model.dart';
import 'package:login_register/pages/Drawwer.dart';
import 'package:login_register/providers/auth_provider.dart';
import 'package:login_register/providers/product_provider.dart';
import 'package:login_register/shared/shared.dart';
import 'package:login_register/widget/Product_tile.dart';
import 'package:login_register/widget/product_card.dart';

import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Productprovider productprovider = Provider.of<Productprovider>(context);
    // Provider.of<Productprovider>(context, listen: false).getProducts();
    Widget Appbar() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/Drawwer');
              },
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Bar_icon.png',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 340,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/seach_icon.png',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/cart');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/shope_icon.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget nama() {
      return Container(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome,  ${user.nama}',
                    style: nameTextStyle.copyWith(
                      fontSize: 28,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        height: 28,
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                margin: EdgeInsets.only(right: 9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: secondaryColor,
                ),
                child: Text(
                  'Most Popular',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Container(
                height: 28,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                margin: EdgeInsets.only(right: 9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: treeColor,
                  ),
                  color: treeColor,
                ),
                child: Text(
                  'Best Seller',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Container(
                height: 28,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                margin: EdgeInsets.only(right: 9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: treeColor,
                  ),
                  color: treeColor,
                ),
                child: Text(
                  'Latest',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Container(
                height: 28,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                margin: EdgeInsets.only(right: 9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: treeColor,
                  ),
                  color: treeColor,
                ),
                child: Text(
                  'Lowest Price',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Container(
                height: 28,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                margin: EdgeInsets.only(right: 9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: treeColor,
                  ),
                  color: treeColor,
                ),
                child: Text(
                  'New Product',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),

              // Row(
              //   children: [
              //     ProductCard1(),
              //     //ProductCard1(),
              //   ],
              // ),
              Row(
                children: productprovider.products
                    .map(
                      (product) => ProductCard(product),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      );
    }

    Widget TerfavoriteTile() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Most Favorite',
          style: brownTextStyle.copyWith(
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget terfavorite() {
      return Container(
        margin: EdgeInsets.only(
          top: 13,
        ),
        child: Column(
          children: productprovider.products
              .map((product) => ProductTile(product))
              .toList(),
        ),
      );
    }

    return ListView(
      children: [
        Appbar(),
        nama(),
        categories(),
        popularProducts(),
        TerfavoriteTile(),
        terfavorite(),
      ],
    );
  }
}
