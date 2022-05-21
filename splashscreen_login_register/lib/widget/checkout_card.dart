import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';

class CheckoutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: brownColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/product.png',
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
                'Kopi Beras',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                'Rp 35.000',
                style: treeTextStyle,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          '3 items',
          style: whiteTextStyle.copyWith(
            fontSize: 12,
          ),
        ),
      ]),
    );
  }
}
