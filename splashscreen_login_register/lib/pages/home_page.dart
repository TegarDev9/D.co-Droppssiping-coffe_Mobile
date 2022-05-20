import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';
import 'package:login_register/widget/Product_tile.dart';
import 'package:login_register/widget/Product_tile2.dart';
import 'package:login_register/widget/product_card.dart';
import 'package:login_register/widget/product_card1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget Appbar() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome,  D.O Kyungsoo',
                    style: nameTextStyle.copyWith(
                      fontSize: 28,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/Mask.png',
                  ),
                ),
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
          child: Row(children: [
            SizedBox(
              width: defaultMargin,
            ),
            Row(
              children: [
                ProductCard(),
                ProductCard1(),
                ProductCard(),
                ProductCard1(),
              ],
            ),
          ]),
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
          children: [
            ProductTile(),
            ProductTile2(),
            ProductTile(),
            ProductTile2(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        Appbar(),
        categories(),
        popularProducts(),
        TerfavoriteTile(),
        terfavorite(),
        ProductTile(),
      ],
    );
  }
}
