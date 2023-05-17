import 'package:flutter/material.dart';

class SearchList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      width: 260,
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 19,
                        ),
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search_outlined,
                      color: Colors.black38,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, bottom: 30),
                child: Icon(
                  Icons.shopping_cart,
                  size: 25,
                  color: Color.fromARGB(255, 0, 42, 255),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 120, bottom: 20),
                child: Text(
                  "Featured & Recommended",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
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
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20, bottom: 10,),
                child: Text(
                  "Stray",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20, bottom: 30,),
                child: Text(
                  "Rp 459 999",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1),
                  child: Image.asset(
                    "images/status2.jpg",
                    height: 200,
                    width: 360,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20, bottom: 10,),
                child: Text(
                  "Armored Core 6 : Fires of Rubicon",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20, bottom: 30,),
                child: Text(
                  "Rp 599 000",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
