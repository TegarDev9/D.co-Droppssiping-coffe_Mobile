import 'dart:html';

import 'package:flutter/material.dart';
import 'package:login_register/pages/pages.dart';
import 'package:login_register/shared/shared.dart';

class WhislistCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  'Kopi Susu',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Rp.30000',
                  style: primaryTextStyle,
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/whislist_button.png',
            width: 34,
          ),
        ],
      ),
    );
  }
}
