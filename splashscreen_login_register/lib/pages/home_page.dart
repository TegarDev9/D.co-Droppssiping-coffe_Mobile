import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';
import 'package:login_register/widget/Product_tile.dart';
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'WELCOME,  D.O Kyungsoo',
                    style: nameTextStyle.copyWith(
                      fontSize: 22,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '@ D.O Kyungsoo',
                    style: nameTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 50,
              height: 50,
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
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: secondaryColor,
                ),
                child: Text(
                  'Most Populer',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: treeColor,
                  ),
                  color: treeColor,
                ),
                child: Text(
                  'Best Seller',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: treeColor,
                  ),
                  color: treeColor,
                ),
                child: Text(
                  'latest',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: treeColor,
                  ),
                  color: treeColor,
                ),
                child: Text(
                  'lawest price',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: treeColor,
                  ),
                  color: treeColor,
                ),
                child: Text(
                  'New Product',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
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
          'Terfavorite',
          style: treeTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
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
            ProductTile(),
            ProductTile(),
            ProductTile(),
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
