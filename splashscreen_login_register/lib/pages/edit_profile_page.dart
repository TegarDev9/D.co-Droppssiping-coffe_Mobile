import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff7F6654),
        elevation: 0,
        centerTitle: true,
        title: Text('Edit Profile'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.check,
                color: secondaryColor,
              ))
        ],
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 12,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'username',
            style: textsenderTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
        ]),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 12,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'emailaddress',
            style: textsenderTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
        ]),
      );
    }

    Widget phoneInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 12,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'emailaddress',
            style: textsenderTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
        ]),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/Mask.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
        nameInput(),
        usernameInput(),
        emailInput(),
        phoneInput(),
      ],
    );
  }
}
