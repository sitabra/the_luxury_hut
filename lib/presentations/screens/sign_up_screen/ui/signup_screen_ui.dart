import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../constants/dimens.dart';
import '../../../../constants/palatte.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  PageController controller = PageController();

  void jumpTo(int screen) {
    controller.animateToPage(screen,
        duration: const Duration(milliseconds: 1),
        curve: Curves.linearToEaseOut);
  }

  Color step1Color = Colors.green;
  Color step2Color = Colors.grey.withOpacity(0.7);
  Color step3Color = Colors.grey.withOpacity(0.7);

  Widget step1(){
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: ListView(
              children: [
               const SizedBox(
                  height: AppSizes.dimen10,
                ),
                Row(
                  children: const [
                    Text("Company Name",style: TextStyle(fontFamily: "JosefinSans"),),
                    Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                  ],
                ),
                const SizedBox(height: AppSizes.dimen10,),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    obscureText: false,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                      hintText: "",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.dimen10,
                ),
                Row(
                  children: const [
                    Text("Types of Business",style: TextStyle(fontFamily: "JosefinSans"),),
                    Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                  ],
                ),
                const SizedBox(height: AppSizes.dimen10,),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    obscureText: false,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                      hintText: "",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.dimen10,
                ),
                const Text("Title",style: TextStyle(fontFamily: "JosefinSans"),),
                const SizedBox(height: AppSizes.dimen10,),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    obscureText: false,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                      hintText: "",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.dimen10,
                ),
                Row(
                  children: const [
                    Text("First Name",style: TextStyle(fontFamily: "JosefinSans"),),
                    Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                  ],
                ),
                const SizedBox(height: AppSizes.dimen10,),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    obscureText: false,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                      hintText: "",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.dimen10,
                ),
                Row(
                  children: const [
                    Text("Last Name",style: TextStyle(fontFamily: "JosefinSans"),),
                    Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                  ],
                ),
                const SizedBox(height: AppSizes.dimen10,),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    obscureText: false,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                      hintText: "",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.dimen10,
                ),
                Row(
                  children: const [
                    Text("Email Address",style: TextStyle(fontFamily: "JosefinSans"),),
                    Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                  ],
                ),
                const SizedBox(height: AppSizes.dimen10,),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    obscureText: false,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                      hintText: "",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.dimen10,
                ),
                Row(
                  children: const [
                    Text("Phone Number",style: TextStyle(fontFamily: "JosefinSans"),),
                    Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                  ],
                ),
                const SizedBox(height: AppSizes.dimen10,),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    obscureText: false,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                      hintText: "",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.dimen10,
                ),
                Row(
                  children: const [
                    Text("Account Username",style: TextStyle(fontFamily: "JosefinSans"),),
                    Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                  ],
                ),
                const SizedBox(height: AppSizes.dimen10,),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    obscureText: false,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                      hintText: "",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.dimen10,
                ),
                Row(
                  children: const [
                    Text("Password",style: TextStyle(fontFamily: "JosefinSans"),),
                    Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                  ],
                ),
                const SizedBox(height: AppSizes.dimen10,),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    obscureText: false,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                      hintText: "",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),

              ],
            )),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {
                    jumpTo(1);
                    setState(() {
                      step2Color = Colors.green;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: AppColors.green,
                      // padding: const EdgeInsets.symmetric(horizontal: 155, vertical: 10),
                      textStyle: const TextStyle(
                          fontSize: AppSizes.dimen15,
                          fontWeight: FontWeight.normal)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const[
                       Text("Continue to Next Step",style: TextStyle(fontFamily: "JosefinSans"),),
                      Icon((Icons.arrow_forward)),
                    ],
                  )),
            ),
            Row(
              children: [
                const Text("Already have an account"),
                TextButton(onPressed: (){
                  Navigator.pushNamed(context, "/login");
                }, child: const Text("Login", style: TextStyle(
                  decoration: TextDecoration.underline
                ),))
              ],
            )
          ],
        ),
      )
    );
  }
  Widget step2(){
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: ListView(
                children: [
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("Company Name",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("Types of Business",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  const Text("Title",style: TextStyle(fontFamily: "JosefinSans"),),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("First Name",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("Last Name",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("Email Address",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("Phone Number",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("Account Username",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("Password",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),

                ],
              )),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {
                      jumpTo(3);
                      setState(() {
                        step3Color = Colors.green;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        primary: AppColors.green,
                        // padding: const EdgeInsets.symmetric(horizontal: 155, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: AppSizes.dimen15,
                            fontWeight: FontWeight.normal)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                        Text("Continue to Next Step",style: TextStyle(fontFamily: "JosefinSans"),),
                        Icon((Icons.arrow_forward)),
                      ],
                    )),
              ),
              Row(
                children: [
                  const Text("Already have an account"),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, "/login");
                  }, child: const Text("Login", style: TextStyle(
                      decoration: TextDecoration.underline
                  ),))
                ],
              )
            ],
          ),
        )
    );
  }
  Widget step3(){
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: ListView(
                children: [
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("Company Name",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("Types of Business",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      readOnly: true,
                      decoration: const InputDecoration(
                          suffixIcon : Icon(Icons.arrow_drop_down),
                        hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                        hintText: "Please select",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  const Text("Titles",style: TextStyle(fontFamily: "JosefinSans"),),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      readOnly: true,
                      decoration: const InputDecoration(
                        suffixIcon : Icon(Icons.arrow_drop_down),
                        hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                        hintText: "Prefer Not to Say",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("First Name",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("Last Name",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("Email Address",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("Phone Number",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: IntlPhoneField(
                      decoration: const InputDecoration(
                        labelText: '',
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                      },
                    )
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("Account Username",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.dimen10,
                  ),
                  Row(
                    children: const [
                      Text("Password",style: TextStyle(fontFamily: "JosefinSans"),),
                      Text("*",style: TextStyle(fontFamily: "JosefinSans", color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: AppSizes.dimen10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, color: Colors.indigo),
                        hintText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),

                ],
              )),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: AppColors.green,
                        // padding: const EdgeInsets.symmetric(horizontal: 155, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: AppSizes.dimen15,
                            fontWeight: FontWeight.normal)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                        Text("Submit",style: TextStyle(fontFamily: "JosefinSans"),),
                        Icon((Icons.check)),
                      ],
                    )),
              ),
              Row(
                children: [
                  const Text("Already have an account"),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, "/login");
                  }, child: const Text("Login Screen", style: TextStyle(
                      decoration: TextDecoration.underline
                  ),))
                ],
              )
            ],
          ),
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              const SizedBox(
                height: AppSizes.dimen10,
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/svg-images/logo-1.svg',
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              const SizedBox(height: AppSizes.dimen20,),
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
                  child:Column(
                    children:    [
                      const SizedBox(height: AppSizes.dimen20,),
                      const Text("Create Your Dealer Account",
                        style: TextStyle(fontFamily: "JosefinSans",fontSize: AppSizes.dimen17),),
                      const SizedBox(height: AppSizes.dimen20,),
                      const Padding(padding: EdgeInsets.only(left: 10, right: 10),
                      child: Divider(thickness: 1,
                        color: AppColors.black,),),
                      const SizedBox(height: 15,),
                      Container(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Expanded(
                                flex:2,
                                child: Column(
                                  children: [
                                    Icon(CupertinoIcons.person, color: Colors.grey.withOpacity(0.7),),
                                    Text("Step 1", style: TextStyle(
                                        color: Colors.grey.withOpacity(0.7)
                                    ),),
                                    const SizedBox(height: 10,),
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          Expanded(child: Container(
                                            height: 2,
                                            color: step1Color,
                                          )),
                                          Icon(Icons.check_circle, color: step1Color,),
                                          Expanded(child: Container(
                                            height: 2,
                                            color: step1Color,
                                          ))
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                            Expanded(
                                flex:2,
                                child: Column(
                                  children: [
                                    Icon(CupertinoIcons.doc, color: Colors.grey.withOpacity(0.7)),
                                    Text("Step 2",
                                      style: TextStyle(
                                          color: Colors.grey.withOpacity(0.7)
                                      ),),
                                    const SizedBox(height: 10,),
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          Expanded(child: Container(
                                            height: 2,
                                            color: step2Color,
                                          )),
                                          Icon(Icons.check_circle, color: step2Color,),
                                          Expanded(child: Container(
                                            height: 2,
                                            color: step2Color,
                                          ))
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                            Expanded(
                                flex:2,
                                child: Column(
                                  children: [
                                    Icon(CupertinoIcons.doc_text, color: Colors.grey.withOpacity(0.7)),
                                    Text("Step 3",
                                      style: TextStyle(
                                          color: Colors.grey.withOpacity(0.7)
                                      ),),
                                    const SizedBox(height: 10,),
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          Expanded(child: Container(
                                            height: 2,
                                            color: step3Color,
                                          )),
                                          Icon(Icons.check_circle, color: step3Color,),
                                          Expanded(child: Container(
                                            height: 2,
                                            color: step3Color,
                                          ))
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Expanded(child: Container(
                        color: Colors.grey.withOpacity(0.3),
                        child: PageView.builder(
                          controller: controller,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (BuildContext context, index){
                          return index==0?step1():index==1?step2():step3();
                        }),
                      ))

                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
