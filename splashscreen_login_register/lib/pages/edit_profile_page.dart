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
          top: 30,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Name',
            style: textsenderTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: brownTextStyle,
            decoration: InputDecoration(
              hintText: 'D.O Kyungsoo',
              hintStyle: brownTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: textchat,
                ),
              ),
            ),
          )
        ]),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Username',
            style: textsenderTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: brownTextStyle,
            decoration: InputDecoration(
              hintText: '@kyungsoo_yaa',
              hintStyle: brownTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: textchat,
                ),
              ),
            ),
          )
        ]),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Email Address',
            style: textsenderTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: brownTextStyle,
            decoration: InputDecoration(
              hintText: 'kyungsoo@gmail.com',
              hintStyle: brownTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: textchat,
                ),
              ),
            ),
          )
        ]),
      );
    }

    Widget phoneInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Phone Number',
            style: textsenderTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: brownTextStyle,
            decoration: InputDecoration(
              hintText: '085854032827',
              hintStyle: brownTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: textchat,
                ),
              ),
            ),
          )
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
            nameInput(),
            usernameInput(),
            emailInput(),
            phoneInput(),
          ],
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
