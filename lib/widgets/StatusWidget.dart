import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Today, 12:30 pm",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Recent Updates",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(1),
                    child: Image.asset(
                      "images/status1.jpg",
                      height: 200,
                      width: 360,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 0),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      "Stray",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            "    Recommended Game",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 0),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Text(
                      "New in Stray",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 0),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Text(
                      "1 Hour Ago",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 120),
                ),
                Icon(
                  Icons.comment,
                  size: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60),
                ),
                Icon(
                  Icons.favorite,
                  size: 30,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
