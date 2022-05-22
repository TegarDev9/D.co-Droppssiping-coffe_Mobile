import 'package:flutter/material.dart';

import 'package:login_register/shared/shared.dart';

class Chattile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/login.png',
                    width: 60,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Column(
                    children: [
                      Text(
                        'Dropshipper Coffee',
                        style: brownTextStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Good night, this item is on',
                        style: secondaryTextStyle.copyWith(
                          fontWeight: light,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Text(
                    'Online',
                    style: brownTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Divider(
                thickness: 1,
                color: Color(0xff2B2939),
              ),
            ],
          )),
    );
  }
}
