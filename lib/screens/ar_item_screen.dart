import 'package:flutter/material.dart';
import 'arViewScreen.dart';

class ArItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text("AR in flutter")),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 100,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ARViewScreen(
                        itemImg: "assets/items/img_chair.jpg",
                        itemName: "Eula Modern Accent Dining Chair",
                      ),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset(
                        "assets/items/img_chair.jpg",
                        width: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  <Widget>[
                          Text(
                            "EDining Chair",
                            style: TextStyle(fontSize: 16, color: Colors.blue.shade900),
                          ),
                          Text(
                            "Eula Modern Accent Dining Chair",
                            style:
                                TextStyle(fontSize: 10, color: Colors.blue.shade900),
                          ),
                        ],
                      ),
                    ),
                     SizedBox(
                      width: 60,
                      child: Text(
                        "5,000",
                        style: TextStyle(fontSize: 14, color: Colors.blue.shade900),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
