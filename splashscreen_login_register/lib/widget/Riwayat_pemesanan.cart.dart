import 'package:flutter/material.dart';
import 'package:login_register/models/cart_model.dart';
import 'package:login_register/models/product_model.dart';
import 'package:login_register/providers/product_provider.dart';
import 'package:login_register/shared/shared.dart';
import 'package:provider/provider.dart';

class RiwayatPemesanancard extends StatelessWidget {
  final productModel product;
  RiwayatPemesanancard(this.product);

  @override
  Widget build(BuildContext context) {
    Productprovider productprovider = Provider.of<Productprovider>(context);
    return Container(
      margin: EdgeInsets.only(
        top: 12,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: brownColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(
                  product.galleries![0].url!,
                ),
              ),
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
                  style: treeTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            '${product.harga}',
            // product.status!,
            style: secondaryTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
