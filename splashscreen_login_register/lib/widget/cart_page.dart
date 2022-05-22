import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';
import 'package:login_register/widget/cart2_card.dart';
import 'package:login_register/widget/cart3_card%20.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Card List',
            ),
            Row(
              children: [],
            ),
          ],
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget Emptycard() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: primaryTextColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Cart _icon_chat.png',
                width: 74,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Opss! Empty cart',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text('Let\ns find your favorite coffee',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 24,
                      ),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  child: Text(
                    'Explore store',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: primaryColor,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            children: [
              Cart2Card(),
              Cart3Card(),
              Cart2Card(),
              Cart3Card(),
            ],
          ),
        ),
      );
    }

    Widget CustumButtonNav() {
      return Container(
        height: 140,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 0.3,
              color: primaryTextColor,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              height: 50,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: secondaryColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rp 2.450.000',
                      style: dangerTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Buy Now',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: primaryTextColor,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
        CustumButtonNav(),
      ],
    );
  }
}
