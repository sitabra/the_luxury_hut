import 'package:flutter/material.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('assets/image/hut.png'),
            ),
            const Text("THE LUXURY HUT",
              style: TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.white,fontSize: 35,fontStyle: FontStyle.normal,
                  decoration: TextDecoration.underline),)
          ],
        ),
      ),
    );
  }
}
