import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    Key? key,
    required this.id,
    required this.type,
    required this.date,
  }) : super(key: key);

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
              Text("${AppLocalizations.of(context)!.orderNumber} #$id"),
              Text(
                date,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.serviceTypeLabel,
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                type,
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
