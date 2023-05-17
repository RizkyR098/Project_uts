import 'package:flutter/material.dart';

import '../widgets/SearchList.dart';
import '../widgets/StatusWidget.dart';
import '../widgets/Notifications.dart';

class HomePage extends StatelessWidget {
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
            title: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "Arpeggio Shop",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 12, right: 15),
              ),
              PopupMenuButton(
                onSelected: (selected) {
                  if (selected == 1) {
                    Navigator.pushNamed(context, "settingsPage");
                  }
                },
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 17, 
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ],
              ),
            ],
            leadingWidth: 65,
            leading: Padding(
              padding: EdgeInsets.only(top: 12, left: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(),
                    child: Image.asset(
                      "images/Rizky.jpg",
                      height: 45,
                      width: 45,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 0, 0, 120),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Color.fromARGB(255, 255, 255, 255),
                indicatorWeight: 3,
                labelStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                tabs: [
                  // Tab 2
                  Container(
                    width: 90,
                    child: Tab(
                      child: Text("STORE"),
                    ),
                  ),
                  // Tab 3
                  Container(
                    width: 90,
                    child: Tab(
                      child: Text("NEWS"),
                    ),
                  ),
                  // Tab 4
                  Container(
                    width: 120,
                    child: Tab(
                      child: Text("NOTIFICATIONS"),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  // tab 2 SearchList
                  SearchList(),
                  // tab 3 StatusWidget
                  StatusWidget(),
                  // tab 4 CallsWidget
                  Notifications(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
