import 'dart:html';

import 'package:flutter/material.dart';
import 'package:login_register/models/product_model.dart';
import 'package:login_register/shared/shared.dart';

class ProductCard extends StatelessWidget {
  final productModel product;
  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    var url;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        width: 170,
        height: 220,
        margin: EdgeInsets.only(
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff57361E),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '4.6',
              style: whiteTextStyle.copyWith(fontSize: 10, fontWeight: medium),
              textAlign: TextAlign.left,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  // product!.galleries![0].url!,
                  'assets/images/product.png',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'asem',
                    //'${product.category!.name}',
                    style: whiteTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '30000',
                    //'\Rp${product.harga}',
                    style: whiteTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/favorite1.png',
                        width: 20,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
