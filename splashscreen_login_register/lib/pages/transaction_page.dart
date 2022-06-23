import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:login_register/providers/auth_provider.dart';
import 'package:login_register/providers/cart_provider.dart';
import 'package:login_register/providers/transaction_provider.dart';
import 'package:login_register/shared/shared.dart';

import 'package:login_register/widget/transaction_cart.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<TransactionPage> {
  // bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    TransactionProvider transactionProvider =
        Provider.of<TransactionProvider>(context);
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: AppbarTextColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Transaksi",
        ),
      );
    }

    openwhatsapp() async {
      var whatsapp = "+6285171691521";
      var whatsappURl_android =
          "whatsapp://send?phone=" + whatsapp + "&text=hello";
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
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
                Image.asset(
                  'assets/images/Pembayaran.png',
                )
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
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/dashboard', (route) => false);
              },
              style: TextButton.styleFrom(
                backgroundColor: AppbarTextColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "back home ",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              vertical: defaultMargin,
            ),
            child: TextButton(
              onPressed: () {
                openwhatsapp();
              },
              style: TextButton.styleFrom(
                backgroundColor: AppbarTextColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                " send proof of payment",
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
