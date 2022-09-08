import 'package:flutter/material.dart';
class MyWatchesScreen extends StatefulWidget {
  const MyWatchesScreen({Key? key}) : super(key: key);

  @override
  State<MyWatchesScreen> createState() => _MyWatchesScreenState();
}

class _MyWatchesScreenState extends State<MyWatchesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("My Watches Screen"),
      ),
    );
  }
}
