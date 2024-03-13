import 'package:flutter/material.dart';

class MywalletScreen extends StatefulWidget {
  const MywalletScreen({super.key});

  @override
  State<MywalletScreen> createState() => _MywalletScreenState();
}

class _MywalletScreenState extends State<MywalletScreen> {
  var items = [
    {
      "icon": Icons.add_circle_outline_rounded,
      "status": "Cashback",
      "orderid": "0RD0432547891",
      "price": "₹ 930",
      "subtitle": "Placed on wed, 19 Oct 30, 12:55 pm",
    },
    {
      "icon": Icons.remove_circle_outline_rounded,
      "status": "Deliverd",
      "price": "₹ 580",
      "orderid": "0RD0432525486",
      "subtitle": "Placed on wed, 22 Oct 27, 01:55 pm",
    },
    {
      "icon": Icons.shopping_bag_outlined,
      "status": "Cancelled",
      "orderid": "0RD0432556247",
      "price": "₹ 1080",
      "subtitle": "Placed on wed, 22 Oct 27, 01:55 pm",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
