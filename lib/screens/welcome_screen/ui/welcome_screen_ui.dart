import 'package:flutter/material.dart';
import 'package:the_luxury_hut/constants/palatte.dart';
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
        backgroundColor: AppColors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('assets/image/hut.png'),
            ),
            const Text("THE LUXURY HUT",
              style: TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40,fontStyle: FontStyle.normal,
                  decoration: TextDecoration.underline),),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.circle,size:10,color: AppColors.white,),
                SizedBox(width: 5,),
                Text("THE PRE-OWNED WATCH & JEWELLARY SPECIALIST",
                  style: TextStyle(color: AppColors.white,fontWeight: FontWeight.normal,fontSize: 12
                  ),),
                SizedBox(width: 5,),
                Icon(Icons.circle,size:10,color: AppColors.white,),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const Text("REVOLUTIONIZING LUXURY",
              style: TextStyle(height:1,color: AppColors.white,fontWeight: FontWeight.bold,letterSpacing: 3,fontSize: 15),),
            const SizedBox(height: 10,),
            const Text("   WATCHES SHOPPING",
              style: TextStyle(height:1,color: AppColors.white,fontWeight: FontWeight.bold,letterSpacing: 3,fontSize: 15),)

          ],
        ),
      ),
    );
  }
}
