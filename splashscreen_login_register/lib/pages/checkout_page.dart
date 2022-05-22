import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';

import 'package:login_register/widget/checkoutcard_card.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout Details',
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
              Container(
                margin: EdgeInsets.only(
                  top: defaultMargin,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
              CheckoutCard(),
              Container(
                margin: EdgeInsets.only(
                  top: defaultMargin,
                ),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: brownColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address Details',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/Store_icon.png',
                              width: 40,
                            ),
                            Image.asset(
                              'assets/images/line1.png',
                              height: 30,
                            ),
                            Image.asset(
                              'assets/images/Location Icon.png',
                              width: 40,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Store Location ',
                              style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                            Text(
                              'Sekarwangi',
                              style: primaryTextStyle.copyWith(
                                fontSize: 15,
                                fontWeight: medium,
                              ),
                            ),
                            SizedBox(
                              height: defaultMargin,
                            ),
                            Text(
                              'Your Address ',
                              style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                            Text(
                              'Sukowono',
                              style: primaryTextStyle.copyWith(
                                fontSize: 15,
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: defaultMargin,
                ),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: brownColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Summary',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' Product Quality',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Sekarwangi ',
                          style: primaryTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' Product price',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Rp 105.000',
                          style: primaryTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' Shipping',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Free ',
                          style: primaryTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xff2E3141),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: treeTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Rp 105.000',
                          style: treeTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: semiBold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                  vertical: defaultMargin,
                ),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: AppbarTextColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Checkout now',
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
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

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
