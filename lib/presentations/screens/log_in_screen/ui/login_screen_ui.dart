import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_luxury_hut/constants/dimens.dart';
import 'package:the_luxury_hut/constants/palatte.dart';
import 'package:dotted_line/dotted_line.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: Stack(
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
              SvgPicture.asset(
                'assets/svg-images/logo.svg',
                allowDrawingOutsideViewBox: true,
              ),
                  const SizedBox(
                height: AppSizes.dimen90,
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSizes.dimen50),
                        topRight: Radius.circular(AppSizes.dimen50),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(left: AppSizes.dimen30, right: AppSizes.dimen30),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: AppSizes.dimen50),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontFamily: "JosefinSans",
                                    fontSize: AppSizes.dimen25),
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 1.5,
                            color: AppColors.black,
                          ),
                          const SizedBox(
                            height: AppSizes.dimen5,
                          ),
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontFamily: "JosefinSans",
                                letterSpacing: 1,
                                fontSize: 17,
                                ),
                          ),
                          TextField(
                            controller: emailController,
                            decoration: const InputDecoration(
                                hintText: "Enter Email ID",
                                hintStyle: TextStyle(fontFamily: "JosefinSans",),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: AppColors.grey,
                                  size: AppSizes.dimen30,
                                )),
                          ),
                          const SizedBox(
                            height: AppSizes.dimen10,
                          ),
                          const Text(
                            'Password',
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                letterSpacing: 1,
                                fontSize: 17,
                                ),
                          ),
                          TextField(
                            controller: passwordController,
                            decoration: const InputDecoration(
                                hintText: "Enter Password",
                                hintStyle: TextStyle(fontFamily: "JosefinSans",),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: AppColors.grey,
                                  size: AppSizes.dimen30,
                                )),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(Icons.key),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Forget Password?",
                                    style: TextStyle(color: AppColors.black,fontFamily: "JosefinSans"),
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(context, "/dashboard", (route) => false);
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: AppColors.green,
                                    // padding: const EdgeInsets.symmetric(horizontal: 155, vertical: 10),
                                    textStyle: const TextStyle(
                                        fontSize: AppSizes.dimen15,
                                        fontWeight: FontWeight.normal)),
                                child: const Text("Login",style: TextStyle(fontFamily: "JosefinSans"),)),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, "/signup");
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: AppColors.black,
                                    // padding: const EdgeInsets.symmetric(horizontal: 155, vertical: 10),
                                    textStyle: const TextStyle(
                                        fontSize: AppSizes.dimen15,
                                        fontFamily: "JosefinSans")),
                                child: const Text("Create a Free Dealer Account")),
                          ),
                          const SizedBox(height: AppSizes.dimen20,),
                          Row(
                            children: [
                              const Expanded(
                                child: DottedLine(),
                              ),
                              Container(
                                  decoration: DottedDecoration(
                                    shape: Shape.circle,
                                    borderRadius: BorderRadius.circular(AppSizes.dimen10),
                                  ),
                                  height: AppSizes.dimen50,
                                  width: AppSizes.dimen50,
                                  child: const Center(
                                    child: Text('OR',style: TextStyle(fontFamily: "JosefinSans"),),
                                  )),
                              const Expanded(
                                child: DottedLine(),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSizes.dimen20,),
                          Row(
                            children: [
                              InkWell(
                                onTap:(){},
                                child: Container(
                                  height: AppSizes.dimen40,
                                  width: AppSizes.dimen160,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                      border: Border.all(color: Colors.red),
                                    borderRadius: const BorderRadius.all(Radius.circular(AppSizes.dimen10))
                                  ),
                                  child:  Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svg-images/2991148.svg',
                                        height: AppSizes.dimen20,
                                        width: AppSizes.dimen20,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                      const Text('via Google',style: TextStyle(color: Colors.red,fontFamily: "JosefinSans"),),
                                    ],
                                  )),

                                ),
                              ),
                              const SizedBox(
                                width: AppSizes.dimen20,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: AppSizes.dimen40,
                                  width: AppSizes.dimen150,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(color: Colors.red),
                                      borderRadius: const BorderRadius.all(Radius.circular(AppSizes.dimen10,))
                                  ),
                                  child: Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/svg-images/2021_Facebook_icon.svg.svg',
                                            height: AppSizes.dimen20,
                                            width: AppSizes.dimen20,
                                            allowDrawingOutsideViewBox: true,
                                          ),

                                          const Center(child: Text('via Facebook',style: TextStyle(color: Colors.blue,fontFamily: "JosefinSans"),)),
                                        ],
                                      )),

                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ]),

             Positioned(
              top: 160,
              left: AppSizes.dimen160,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey, spreadRadius: 2)],
                ),
                child: CircleAvatar(
                  backgroundColor: AppColors.white,
                  radius: AppSizes.dimen40,
                  child: SvgPicture.asset(
                    'assets/svg-images/user-3294.svg',
                    height: AppSizes.dimen50,
                    width: AppSizes.dimen50,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
