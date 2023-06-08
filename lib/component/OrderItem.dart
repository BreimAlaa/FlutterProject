import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem(
      {super.key, required this.id, required this.type, required this.date});

  final String id;
  final String type;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 2),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Order #$id"),
              Text(date, style: TextStyle(color: Colors.grey))
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Text("Service Type: ", style: TextStyle(color: Colors.grey)),
              Text(type, style: TextStyle(color: Colors.blue)),
            ],
          )
        ],
      ),
    );
  }
}
