import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';

class ProductCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 210,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff57361E),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '4.3',
            style: whiteTextStyle.copyWith(
                fontSize: 12, fontWeight: FontWeight.w600),
            textAlign: TextAlign.left,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/product.png',
                width: 130,
                height: 130,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Kopi robusta',
                  style: whiteTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Rp 35.000,00',
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
                      width: 15,
                      height: 15,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
