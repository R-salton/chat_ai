import 'package:chat_ai/core/theme/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Onboarding extends StatelessWidget {
  const Onboarding({
    super.key,
    required this.title,
    required this.description, required this.image,

  });

  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     
        SvgPicture.asset(
          image,
          width: 90.h,
          height: 90.h,
        ), 
        SizedBox(
          height: 20.h,
        ),
        Text(
          textAlign: TextAlign.center,
          title,
          style: TextStyle(
              fontSize: 24.sp,
              color: AppColors.secondBackground,
              fontWeight: FontWeight.w500),
         
        ),
        SizedBox(
          height: 50.h,
        ),
        Text(
          textAlign: TextAlign.center,
          description,
          style: TextStyle(
              fontSize: 16.sp,
              color: AppColors.secondBackground,
              fontWeight: FontWeight.w500),
        ),
        
      ],
    );
  }
}
