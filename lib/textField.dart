 // ignore_for_file: must_be_immutable, camel_case_types, use_key_in_widget_constructors, prefer_const_constructors, file_names

 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class getTextField extends StatelessWidget {
  
  String hintText;
  getTextField({required this.hintText});
  final textFieldColor = Color(0xffF5F6FA);
  @override
  Widget build(BuildContext context) {
  return    
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
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400)),
    );
  }
  }
