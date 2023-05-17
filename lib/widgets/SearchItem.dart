import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3, 
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 25, right: 250))
            ],
          ),
        ),
      ),
    );
  }
}