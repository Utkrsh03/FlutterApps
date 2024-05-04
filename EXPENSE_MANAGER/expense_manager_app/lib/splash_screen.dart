import 'dart:ui';

import 'package:expense_manager_app/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  State createState() => _splashscreenState();
}

class _splashscreenState extends State {
  @override
  Widget build(BuildContext con) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      const Spacer(),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => registerscreen()));
        },
        child: Container(
          height: 144,
          width: 144,
          child: Image.asset('nnn2.jpg', height: 58.82, width: 69.76),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(158, 158, 158, 0.192)),
        ),
      ),
      const Spacer(),
      SizedBox(
        width: 145,
        height: 24,
        child: const Text("Expense Manager",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
      ),
      SizedBox(height: 70),
    ])));
  }
}
