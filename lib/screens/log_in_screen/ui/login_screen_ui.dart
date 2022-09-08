import 'package:flutter/material.dart';
import 'package:the_luxury_hut/constants/palatte.dart';

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
    return Scaffold(
        backgroundColor: AppColors.black,
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Image.asset('assets/image/hut.png'),
              ),
              const Text(
                "THE LUXURY HUT",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 40,
                    fontStyle: FontStyle.normal,
                    decoration: TextDecoration.underline),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.circle,
                    size: 10,
                    color: AppColors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "THE PRE-OWNED WATCH & JEWELLARY SPECIALIST",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.circle,
                    size: 10,
                    color: AppColors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                height: 450,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 70),
                          child: Text("LOGIN",
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        ),
                      ),
                      const Divider(
                        thickness: 1.5,
                        color: AppColors.black,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Email',style: TextStyle(letterSpacing:1,fontSize: 17,fontWeight: FontWeight.bold),),
                      TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: "Enter Email ID",
                          prefixIcon: Icon(Icons.email,color: AppColors.grey,size: 30,)

                        ),

                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      const Text('Password',style: TextStyle(letterSpacing:1,fontSize: 17,fontWeight: FontWeight.bold),),
                      TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                            hintText: "Enter Password",
                            prefixIcon: Icon(Icons.lock,color: AppColors.grey,size: 30,)

                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text("Forget Password?")),
                      )
                    ],
                  ),
                ),
              )
            ]),
            const Positioned(
              top: 290,
              left: 160,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image/user.png'),
                backgroundColor: AppColors.grey,
                radius: 40,
              ),
            )
          ],
        ),
    );
  }
}
