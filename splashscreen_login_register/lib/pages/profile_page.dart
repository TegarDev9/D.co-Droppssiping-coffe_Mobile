import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';
import 'package:provider/provider.dart';

import '../models/user_model.dart';
import '../providers/auth_provider.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    Widget header() {
      return AppBar(
        backgroundColor: brownColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(
              defaultMargin,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/images/Mask.png',
                          width: 64,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        '${user.nama}',
                        style: primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        '${user.email}',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(
          top: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondaryTextStyle.copyWith(fontSize: 13),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: primaryColor,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, '/edit-profile');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  menuItem(
                    'Profile',
                  ),
                  Image.asset(
                    'assets/images/profile_icon.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                menuItem(
                  'Transaction',
                ),
                Image.asset(
                  'assets/images/transaction_icon.png',
                  width: 24,
                  height: 24,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                menuItem(
                  'Notification',
                ),
                Image.asset(
                  'assets/images/notification_icon.png',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                menuItem(
                  'Favorite ',
                ),
                Image.asset(
                  'assets/images/favorite_icon.png',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                menuItem(
                  'Setting',
                ),
                Image.asset(
                  'assets/images/settings_icon.png',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/welcome-pages', (route) => false);
              },
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/Exit_Button.png',
                    width: 24,
                  ),
                  Text(
                    'Sign out',
                    style: Signout2,
                  ),
                ],
              ),
            ),
          ]),
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
