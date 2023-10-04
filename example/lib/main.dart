import 'dart:io';

import 'package:flutter/material.dart';
import 'package:odm/odm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _odmPlugin = Odm();

  @override
  Widget build(BuildContext context) {

    if (Platform.isIOS) {
      _odmPlugin.initiateWithEmail("abc@gmail.com");
    }

    //Typical placeholder
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: const Center(
          child: Text('Running'),
        ),
      ),
    );


  }
}
