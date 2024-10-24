/*
  Name Project : Page resep indomie
  Date : 23 oktober 2024

*/


import 'package:flutter/material.dart';
import 'package:tugas3_pageindomie/resep.dart';



void main() {
  runApp(const MainApp());
 
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ResepPages()
    );
  }
}
