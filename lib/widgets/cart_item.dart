import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_regular_text.dart';
import 'package:vendor_app/constants/colors.dart';

class CartItems extends StatelessWidget {
  const CartItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartList = [
      const CartCard(
        name: 'kdhfjkdhfkhdhf kjhj khjhghjghjghjgjhg jhg hg hg hgh ',
        quantity: 2,
        price: 1000.0,
      ),
      const CartCard(
        name: 'kdhfjkdhfkhdhf',
        quantity: 2,
        price: 1000.0,
      ),
      const CartCard(
        name: 'kdhfjkdhfkhdhf gby',
        quantity: 2,
        price: 1000.0,
      ),
      const CartCard(
        name: 'kdhfjkdhfkhdhf',
        quantity: 2,
        price: 1000.0,
      ),
    ];
    return SliverList(delegate: SliverChildListDelegate([
      ...cartList.map((e) => e)
    ]));
  }
}


class CartCard extends StatelessWidget {
  final String name;
  final int quantity;
  final double price;
  const CartCard({Key? key, required this.name, required this.quantity, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: AppColor.divider,),
          top: BorderSide(color: AppColor.divider)
        )
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(flex: 2, child: AppRegularText(text: name, maxLines: 1, overflow: TextOverflow.ellipsis, color: Colors.black)),
          Expanded(flex: 1, child: AppRegularText(text: "${quantity}x", maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, color: Colors.black)),
          Expanded(flex: 1, child: AppRegularText(text: "₹${price.toStringAsFixed(2)}", maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.end, color: Colors.black)),
        ],
      ),
    );
  }
}