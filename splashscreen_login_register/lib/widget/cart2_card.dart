import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';

class Cart2Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: brownColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
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
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Rp.35.000',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/trash.png',
                    width: 40,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/add.png',
                width: 16,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '2',
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 12),
              ),
              SizedBox(
                height: 2,
              ),
              Image.asset(
                'assets/images/minus.png',
                width: 16,
              ),
              SizedBox(
                width: 4,
              ),
            ],
          )
        ],
      ),
    );
  }
}
