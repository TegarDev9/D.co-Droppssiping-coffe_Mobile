import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:login_register/providers/auth_provider.dart';
import 'package:login_register/providers/cart_provider.dart';
import 'package:login_register/providers/transaction_provider.dart';

import 'package:login_register/shared/shared.dart';

import 'package:login_register/widget/checkout_card.dart';
import 'package:provider/provider.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    TransactionProvider transactionProvider =
        Provider.of<TransactionProvider>(context);
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleCheckout() async {
      if (await transactionProvider.checkout(
        authProvider.user.token!,
        cartProvider.carts,
        cartProvider.totalHarga(),
      )) {
        cartProvider.cart = [];
        Navigator.pushNamedAndRemoveUntil(
            context, '/checkout-success', (route) => false);
      }
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Checkout Details",
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          // NOTE : List Item
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                    children: cartProvider.carts
                        .map(
                          (cart) => CheckoutCard(cart),
                        )
                        .toList())
              ],
            ),
          ),

          // Note : Address Detail
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
                  "Address Details",
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
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
                          "Store Location",
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          "Sekarwangi",
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Text(
                          "Your Address",
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          "sukowono",
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

          // Note: Payment Summary
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
                  "Payment Summary",
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
                      'Product quantity',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '${cartProvider.totalItems()} Sekarwangi',
                      style: primaryTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product price',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Rp${cartProvider.totalHarga()}',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
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
                      'Shipping',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Free',
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
                  height: 12,
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
                      'Rp${cartProvider.totalHarga()}',
                      // 'Rp${cartProvider.totalHarga()+10}',
                      style: treeTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Note: Checkout button
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
              onPressed: handleCheckout,
              style: TextButton.styleFrom(
                backgroundColor: AppbarTextColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Checkout Now",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: header(),
      body: content(),
    );
  }
}
