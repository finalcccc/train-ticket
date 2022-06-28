import 'package:flutter/material.dart';
import 'package:web_admin/trainTicket.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'train-ticket',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TrainTicket(),
    );
  }
}
