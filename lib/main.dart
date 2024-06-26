import 'package:api/models/fuctions/fuctions.dart';
import 'package:api/screens/detailScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  print(getApi());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const addPostScreen(),
    );
  }
}
