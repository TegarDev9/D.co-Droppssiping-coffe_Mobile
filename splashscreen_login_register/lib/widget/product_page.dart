import 'dart:html';
import 'dart:js';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:login_register/models/product_model.dart';
import 'package:login_register/pages/checkout_page.dart';
import 'package:login_register/shared/shared.dart';
import 'package:login_register/widget/checkoutcard_card.dart';

class ProductPage extends StatefulWidget {
  final productModel product;
  ProductPage(this.product);
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/images/product.png',
    'assets/images/product.png',
  ];

  int currentIndex = 0;
  bool isWhihlist = false;
  @override
  Widget build(BuildContext context) {
    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (2 * defaultMargin),
          child: AlertDialog(
            backgroundColor: dangerColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: primaryTextColor,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/Succes.png',
                    width: 100,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Success :',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Item added successfully',
                    style: primaryTextStyle,
                  ),
                  Container(
                    width: 154,
                    height: 44,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/checkout');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Checkout Now',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? brownColor : primaryColor,
        ),
      );
    }

    Widget familiarShoescard(String imageUrl) {
      return Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(
          right: 16,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      );
    }

    Widget header() {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: whiteColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                  child: Image.asset(
                    'assets/images/shope_icon.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map((image) => Image.asset(
                      image,
                      width: MediaQuery.of(context).size.width,
                      height: 310,
                      fit: BoxFit.cover,
                    ))
                .toList(),
            options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }

    Widget content() {
      int index = -1;
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 17,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: primaryColor,
        ),
        child: Column(
          children: [
            // Note: Header
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.product.name,
                          // 'Kopi Beras',
                          style: dangerTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          '(20 Review)',
                          style: dangerTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isWhihlist = !isWhihlist;
                      });

                      if (isWhihlist) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: secondaryColor,
                            content: Text(
                              'Has been added to the wishlist',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      } else {
                        if (isWhihlist) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Signout,
                              content: Text(
                                'Has been remove from the wishlist',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        }
                      }
                    },
                    child: Image.asset(
                      isWhihlist
                          ? 'assets/button_whist.png'
                          : 'assets/images/whish_icon.png',
                      width: 26,
                      height: 26,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 20,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
              ),
            ),

            //Note Deskripsion

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    widget.product.deskripsi!,
                    // 'Kopi Beras, alternatif pengganti minuman kopi bagi yang menghindari kafein dan berbagai penyakit serangan jantung. Cara mengolah beras kopi ini sangat sederhana,  siapkan wajan dengan menggunakan bara api untuk memanggang beras. Lalu sangrai beras sampai berubah warna dan mengeluarkan aroma khas.',
                    style: dangerTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            //NOTE:FAMILIAR SHOES

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            // NOTE: BUTTONS
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'detail-chat');
              },
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(
                  defaultMargin,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/Button_Chat.png',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: Container(
                        height: 54,
                        child: TextButton(
                          onPressed: () {
                            showSuccessDialog();
                          },
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            backgroundColor: dangerColor,
                          ),
                          child: Text(
                            '${widget.product.harga}    |   Add to cart',
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: brownColor,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
