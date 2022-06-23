import 'package:flutter/material.dart';
import 'package:login_register/pages/pages.dart';
import 'package:login_register/providers/page_provider.dart';
import 'package:login_register/providers/wishlist_provider.dart';
import 'package:login_register/shared/shared.dart';
import 'package:login_register/widget/Riwayat_pemesanan.cart.dart';
import 'package:login_register/widget/whislist_card.dart';
import 'package:provider/provider.dart';

class RiwayatPemesanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

    Widget header() {
      return AppBar(
        backgroundColor: AppbarTextColor,
        centerTitle: true,
        title: Text(
          'Order History ',
          style: primaryTextStyle,
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget whiistlist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Favorite.png',
                width: 181,
                height: 181,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Order History list is empty!',
                style: AppbarTextstyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Explore the products and add them to ',
                style: AppbarTextstyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
              Text(
                'Order History to show them here.',
                style: AppbarTextstyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
              SizedBox(
                height: 190,
              ),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 200,
                      ),
                      backgroundColor: buttonfavorite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  child: Text(
                    'Explore',
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
            children: wishlistProvider.wishlist
                .map(
                  (product) => RiwayatPemesanancard(product),
                )
                .toList(),
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        wishlistProvider.wishlist.length == 0 ? whiistlist() : content(),
      ],
    );
  }
}
