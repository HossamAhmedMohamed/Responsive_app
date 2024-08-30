// ignore_for_file: prefer_const_constructors, use_super_parameters, unused_import, unused_label, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_app/textField.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:
      const Size(360, 690),
      minTextAdapt:
      true,
      splitScreenMode:
      true,
      builder: (BuildContext context, child) {
      
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home: homePage(),
      );
    });
  }
}

class homePage extends StatelessWidget {
  final purpleColor = Color(0xff6688FF);
  final darkTextColor = Color(0xff1F1A3D);
  final lightTextColor = Color(0xff999999);
  final textFieldColor = Color(0xffF5F6FA);
  final borderColor = Color(0xffD9D9D9);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 52.h,
                ),
                 
                Text("Sign Up to masterminds",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color : darkTextColor
                ),),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Text("Already have an account ?",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: lightTextColor,
                      fontWeight: FontWeight.w600
                      
                    ),),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text("Login",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: purpleColor,
                    ),
                    )
                  ],
                ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: textFieldColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(color: Colors.transparent, width: 0),
            
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(color: Colors.transparent, width: 0),
            
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.w , vertical: 14.h),
                      hintText: "First Name",
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400
                      )
                    ),
                  ),
                  SizedBox(height: 16.h,),
                  getTextField(hintText: "Last Name"),
                    SizedBox(height: 16.h,),
                  getTextField(hintText: "Email"),
                    SizedBox(height: 16.h,),
                  getTextField(hintText: "Password"),
                    SizedBox(height: 16.h,),
                  getTextField(hintText: "Confirm Password"),
                    SizedBox(height: 16.h,),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(purpleColor),
                        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 14.h)),
                      
                      ),
                       child: Text(
                        "Create Account ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700
                        ),
                       ),
                       ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        Expanded(child: Divider()),
                        Text("Or sign up via",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: lightTextColor
                        ),),
                        Expanded(child: Divider())
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                      SizedBox(
                      width: double.infinity,
                      child: TextButton(onPressed: (){},
                      style: ButtonStyle(
                        side: WidgetStateProperty.all(BorderSide(color: borderColor)),
                        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 14.h)),
                      
                      ),
                       child: Text(
                        "Google",
                        style: TextStyle(
                          color: darkTextColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700
                        ),
                       ),
                       ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Wrap(
                      children: [
                        Text("By siginig up to ....... you agree to our",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: lightTextColor,
                      fontWeight: FontWeight.w600
                      
                    ),),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text("terms and conditions",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: purpleColor,
                    ),
                    )  
                      ],
                    )
                    

            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
