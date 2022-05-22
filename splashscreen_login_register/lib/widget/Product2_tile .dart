import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';

class ProductTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product2');
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
                    'Kopi Robusta',
                    style: whiteTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Kopi Robusta (nama Latin Coffea canephora atau Coffea robusta) merupakan keturunan beberapa spesies kopi, terutama Coffea canephora. ',
                    style: primaryTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text('\Rp 35.000',
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 12,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
