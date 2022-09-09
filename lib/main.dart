import 'package:flutter/material.dart';
import 'package:the_luxury_hut/utils/routes/routes.dart';


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
      title: 'The Luxury Hut',
      initialRoute: '/welcome',
      routes: routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}


