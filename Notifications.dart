import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              "You don't have any Notifications Now.",
              style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ]
      ),
    );
  }
}