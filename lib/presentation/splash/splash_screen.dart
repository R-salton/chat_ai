

import 'package:chat_ai/core/theme/app_colors.dart';
import 'package:chat_ai/presentation/splash/last_splash.dart';
import 'package:chat_ai/presentation/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return 

      Scaffold(
        // backgroundColor: AppColors.background,
        body:_pageIndex == 3 ? LastSplash() : Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
           
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              SizedBox(
                height: 350.h,
                child: Expanded(
                  flex: 5,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: onboards.length,
                    onPageChanged: (index) => {
                      setState(() {
                        _pageIndex = index;
                      })
                    },
                    itemBuilder: (context, index) => Onboarding(
                        title: onboards[index].title,
                        description: onboards[index].description,
                        image: onboards[index].image),
                  ),
                ),
              ),
         
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                      onboards.length-1,
                      (index) => Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: DotIndicator(isActive: index == _pageIndex),
                          )),
                  
                  
                     
                ],
                             ),
              SizedBox(
                height: 60,
              )
             
            ],
          ),
        ),
      
    );
  }
}

class DotIndicator extends StatelessWidget {
  final bool isActive;
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:4,
      width: 80,
      decoration: BoxDecoration(
          color: isActive ? AppColors.primary : AppColors.secondBackground,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}

// Onbording Data Class
class Onboard {
  final String title;
  final String description;
  final String image;
  const Onboard({
    required this.title,
    required this.description,
    required this.image,
  });
}

// Onbording Data List
final List<Onboard> onboards = [
  Onboard(
    title: "Intelligent, humble language model, limitless knowledge.",
    description:
        'Interact with your AI assistant to get the better choice in writing',
    image: 'assets/vectors/chat-gpt.svg',
  ),
  Onboard(
    title: "Next-gen AI language model, limitless potential.",
    description:
        'Interact with your AI assistant to get the better choice in writing',
    image: 'assets/vectors/chat-gpt.svg',
  ),
  Onboard(
    title: "Wise, knowledgeable AI, shaping communication future.",
    description:
        'Interact with your AI assistant to get the better choice in writing.',
    image: 'assets/vectors/chat-gpt.svg',
  ),
  Onboard(title: "Revolutionary AI language model, transforming communication.", description:"Remembers what user said earlier in the conversation" , image: 'assets/vectors/chat-gpt.svg'),
];
