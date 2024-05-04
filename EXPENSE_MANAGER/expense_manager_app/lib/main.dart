 
import 'package:expense_manager_app/splash_screen.dart';
import 'package:expense_manager_app/transaction_screen.dart';
import 'package:expense_manager_app/trash_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,  
        
        home: splashscreen());
  }
}







