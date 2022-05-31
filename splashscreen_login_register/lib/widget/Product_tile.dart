import 'package:flutter/material.dart';
import 'package:login_register/models/product_model.dart';
import 'package:login_register/shared/shared.dart';

class ProductTile extends StatelessWidget {
  final productModel product;
  ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff57361E),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                // product!.galleries![0].url!,
                'assets/images/product.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
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
                    product.name,
                    style: whiteTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    product.deskripsi!,
                    // 'Kopi beras adalah biji kopi kering yang sudah dibuang kulit tanduk dan kulit arinya.',
                    style: primaryTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '\Rp${product.harga}',
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 12,
                    ),
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
