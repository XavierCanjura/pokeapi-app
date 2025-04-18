import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TypeBadge extends StatelessWidget {
  final String type;
  EdgeInsets? padding = EdgeInsets.fromLTRB(10, 5, 10, 5);

  TypeBadge({super.key, required this.type, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Text(
            type,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
