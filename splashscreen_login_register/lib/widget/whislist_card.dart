import 'dart:html';

import 'package:flutter/material.dart';
import 'package:login_register/models/product_model.dart';
import 'package:login_register/pages/pages.dart';
import 'package:login_register/providers/page_provider.dart';
import 'package:login_register/providers/wishlist_provider.dart';
import 'package:login_register/shared/shared.dart';
import 'package:provider/provider.dart';

class WhislistCard extends StatelessWidget {
  final productModel product;
  WhislistCard(this.product);

  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: brownColor,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              // //  product.galleries![0].url!,
              'assets/images/product 5.png',
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name!,
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '${product.harga}',
                  style: primaryTextStyle,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              wishlistProvider.setProduct(product);
            },
            child: Image.asset(
              'assets/images/favorite1.png',
              width: 34,
            ),
          ),
        ],
      ),
    );
  }
}
