import 'package:chatx/core/theme/app_colors.dart';
import 'package:chatx/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
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
          width: 200,
          height: 300,
        ), 
        
        Text(
          textAlign: TextAlign.center,
          title,
          style: TextStyle(
              fontSize: 24,
              color: AppColors.secondBackground,
              fontWeight: FontWeight.w500),
         
        ),
        Text(
          textAlign: TextAlign.center,
          description,
          style: TextStyle(
              fontSize: 16,
              color: AppColors.secondBackground,
              fontWeight: FontWeight.w500),
        ),
        
      ],
    );
  }
}
