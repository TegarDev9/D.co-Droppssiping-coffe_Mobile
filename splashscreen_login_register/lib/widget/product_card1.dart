import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';

class ProductCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product2');
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
              '4.3',
              style: whiteTextStyle.copyWith(fontSize: 10, fontWeight: medium),
              textAlign: TextAlign.left,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
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
                    'Kopi Robusta',
                    style: whiteTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Rp 35.000',
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
