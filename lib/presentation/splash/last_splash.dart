import 'package:chat_ai/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastSplash extends StatelessWidget {
  const LastSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                   Text(
              
              textAlign: TextAlign.center,
              'Revolutionary AI language model, transforming communication.',
              style: TextStyle(
                  fontSize: 30.sp,
                  color: AppColors.secondBackground,
                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
              height: 20.h,
                            ),
                            Text(
              textAlign: TextAlign.center,
              'Welcome to Chat AI',
              style: TextStyle(
                  fontSize: 16.sp,
                  
                  color: AppColors.secondBackground,
                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
              height: 20.h,
                            ),
                            
                ],
              ),
              Container(
                child: Column(
                  children: [
Image.asset(
                'assets/images/energy.png',
                width: 100.w,
                height: 100.h,
              ),
              Text("Capabilities",style: TextStyle(
                  fontSize: 18.sp,
                  color: AppColors.secondBackground,
                  fontWeight: FontWeight.w500),),
                  SizedBox(
                    height: 20.h,
                  ),

                  Text(
                    textAlign: TextAlign.center,
                    "Remembers what user said earlier in the conversation",style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.secondBackground,
                  fontWeight: FontWeight.w500),),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("Allows user to provide follow-up corrections",style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.secondBackground,
                  fontWeight: FontWeight.w500),),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("Trained to decline inappropriate requests",style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.secondBackground,
                  fontWeight: FontWeight.w500),),
                  SizedBox(
                    height: 10.h,
                  ),
          
              SizedBox(
                height: 50.h,
              ),
                  ],
                ),
              ),

              
             
              
              GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 200.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    
                      color: Colors.transparent,
                      border: Border.all(color: AppColors.primary, width: 1.5.w),
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(
                  
                    textAlign: TextAlign.center,
                    'Get started now >',
                    style: TextStyle(
                        fontSize: 18,
                        color: AppColors.secondBackground,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}