import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_luxury_hut/constants/dimens.dart';
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
              child: SvgPicture.asset(
                'assets/svg-images/logo.svg',
                allowDrawingOutsideViewBox: true,
              ),
            ),
            const SizedBox(height: AppSizes.dimen150,),
            const Text("REVOLUTIONIZING LUXURY",
              style: TextStyle(height:1,color: AppColors.white,fontWeight: FontWeight.bold,letterSpacing: 3,fontSize: 15),),
            const SizedBox(height: AppSizes.dimen10,),
            const Text("   WATCHES SHOPPING",
              style: TextStyle(height:1,color: AppColors.white,fontWeight: FontWeight.bold,letterSpacing: 3,fontSize: 15),)

          ],
        ),
      ),
    );
  }
}
