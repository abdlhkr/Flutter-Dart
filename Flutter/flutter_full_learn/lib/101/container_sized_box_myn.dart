import 'package:flutter/material.dart';

class ContainerSizedBoxMyne extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amberAccent),
      body: Column(
        children: [
          SizedBox(
            width: 400,
            height: 100,
            child: Text(
              "this is a sized box" * 2,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            // if we wanna create a sized wich has a shape of box easily
          ),
          SizedBox.square(
            dimension: 100,
            child: Text("thats a square shaped sized box not a weird thing"),
          ),
          Container(
            constraints: BoxConstraints(
              minWidth: 100,
              maxWidth: 200,
              minHeight: 100,
              maxHeight: 200,
            ),
            padding: EdgeInsets.only(top: 10, bottom: 20, right: 10, left: 20),
            decoration: BoxDecoration(
              // color: const Color.fromARGB(255, 78, 138, 188),
              border: Border.all(width: 10, color: Colors.black),
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  const Color.fromARGB(255, 179, 46, 46),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              """thats not a Sized Box its a container an awsome widget
            you can specify by your own """,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
