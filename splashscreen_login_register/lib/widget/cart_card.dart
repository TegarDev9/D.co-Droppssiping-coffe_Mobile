import 'package:flutter/material.dart';
import 'package:login_register/models/cart_model.dart';
import 'package:login_register/providers/cart_provider.dart';

import 'package:login_register/shared/shared.dart';
import 'package:provider/provider.dart';

class CartCard extends StatelessWidget {
  final CartModel cart;
  CartCard(this.cart);
  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: brownColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      // 'assets/images/product.png',
                      cart.product.galleries![0].url!,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cart.product.name!,
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Rp.${cart.product.harga}',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      cartProvider.removeCart(cart.id);
                    },
                    child: Image.asset(
                      'assets/images/trash.png',
                      width: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  cartProvider.addQuantity(cart.id);
                },
                child: Image.asset(
                  'assets/images/add.png',
                  width: 16,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                cart.quantity.toString(),
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 12),
              ),
              SizedBox(
                height: 2,
              ),
              GestureDetector(
                onTap: () {
                  cartProvider.reduceQuantity(cart.id);
                },
                child: Image.asset(
                  'assets/images/minus.png',
                  width: 16,
                ),
              ),
              SizedBox(
                width: 4,
              ),
            ],
          )
        ],
      ),
    );
  }
}
