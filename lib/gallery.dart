// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( const MaterialApp(
     //debugShowCheckedModeBanner: false,
   ));
  }

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  int nextGallery = 2;

  void moveGallery() {
    setState(() {
      nextGallery = Random().nextInt(176) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                moveGallery();

                print('you pressed left');
              },
              child: Image.asset('images/W$nextGallery.png'),
            ),
          ),
        ],
      ),
    );
  }
}
