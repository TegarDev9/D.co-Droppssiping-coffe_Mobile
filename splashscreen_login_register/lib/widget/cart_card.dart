import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';

class CartCard extends StatelessWidget {
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
        color: colorbottom,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(children: [
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/product,png',
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
                    style: brownTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Rp 35.000',
                    style: secondaryTextStyle,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Image.asset(
                  'assets/add.png',
                  width: 16,
                ),
                Text(
                  '2',
                  style: brownTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Image.asset(
                  'assets/minus.png',
                  width: 16,
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/trash.png',
              width: 10,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              'Remove',
              style: Signout2.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
            )
          ],
        ),
      ]),
    );
  }
}
