import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
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
                    'WELCOME, D.O Kyungsoo',
                    style: dangerTextStyle.copyWith(
                      fontSize: 24,
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

    return ListView(
      children: [
        Image.asset('assets/images/Rectangle_11.png'),
        header(),
        categories(),
      ],
    );
  }
}
