// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'gallery.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pinkAccent[100],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image(
                  image: AssetImage("images/download.png"),
                ),
              ),
              Card(
                color: Colors.blue.shade900,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 110.0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 2, 2, 10),
                  child: ListTile(
                    // Within the `FirstRoute` widget
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gallery()),
                      );
                    },

                    leading: Icon(
                      Icons.login,
                      size: 40.0,
                      color: Colors.white,
                    ),

                    title: Text(
                      "Click to Explore",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Pacifico",
                        // color: Colors.teal[100],
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    ),
  );
}
