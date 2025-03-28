import 'package:chat_ai/core/theme/app_colors.dart';
import 'package:chat_ai/presentation/pages/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LastSplash extends StatefulWidget {
  const LastSplash({super.key});

  @override
  State<LastSplash> createState() => _LastSplashState();
}

class _LastSplashState extends State<LastSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 SvgPicture.asset(
                  "assets/vectors/chat-gpt.svg",
                  width: 60.w,
                  height: 60.h,
                 ),
                  Text(
                    textAlign: TextAlign.center,
                    'Chat AI',
                    style: TextStyle(
                        fontSize: 30.sp,
                        color: AppColors.secondBackground,
                        fontWeight: FontWeight.w500),
                  ),

                  SizedBox(height: 30.h,)
                ],
              ),
              
              
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
              height: 40.h,
                            ),

                             Container(
                child: Column(
                  children: [
Image.asset(
                'assets/images/energy.png',
                width: 40.w,
                height: 40.h,
              ),
              SizedBox(height: 10.h,),
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
                            
                ],
              ),
             

              
             
              
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
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