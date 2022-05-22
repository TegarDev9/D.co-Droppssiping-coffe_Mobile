import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';
import 'package:login_register/widget/chat_tile.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: primaryColor,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            children: [
              Chattile(),
              Chattile(),
              Chattile(),
              Chattile(),
              Chattile(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Support ',
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
            decoration: BoxDecoration(
              color: brownColor,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search ",
                      hintStyle: TextStyle(
                        color: primaryTextColor,
                      ),
                      border: InputBorder.none,
                    ),
                    onChanged: (String keyword) {},
                  ),
                ),
                Icon(
                  Icons.search,
                  color: primaryTextColor,
                )
              ],
            ),
          ),
          content(),
        ],
      ),
    );
  }
}
