import 'package:flutter/material.dart';
import 'package:login_register/widget/chat_bubble.dart';
import 'package:login_register/shared/shared.dart';

class DetailChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Column(
          children: [
            AppBar(
              backgroundColor: brownColor,
              centerTitle: false,
              title: Row(
                children: [
                  Image.asset(
                    'assets/images/login.png',
                    width: 50,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dropshipper Coffe',
                        style: primaryTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Online',
                        style: secondaryTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget productPreview() {
      return Container(
        width: 225,
        height: 74,
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: brownColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: primaryColor,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/product 5.png',
                width: 54,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Kopi Beras',
                    style: primaryTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '\Rp 35.000',
                    style: yellowTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                        color: brownColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Type Message ......',
                          hintStyle: whiteTextStyle2,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/Send_button.png',
                  width: 45,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          ChatBubble(
            isSender: true,
            text: 'Ho, This item is stilll available?',
          ),
          ChatBubble(
            isSender: false,
            text: 'Good night , this item is only available in packs of 200 gr',
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
