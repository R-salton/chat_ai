



import 'package:chatx/core/theme/app_colors.dart';
import 'package:chatx/presentation/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Container(
              height: 150,
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
        
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onboards.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: DotIndicator(isActive: index == _pageIndex),
                        )),
                
                
                   
              ],
            ),
            // SizedBox(
            //   height: 50,
            // )
           
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
      width: 100,
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
    title: "Stay Updated with Tech Trends",
    description:
        'Get the latest updates on cutting-edge technology, gadgets, and innovations—right at your fingertips.',
    image: 'assets/vectors/chat-gpt.svg',
  ),
  Onboard(
    title: "Expert Insights & Reviews",
    description:
        'Dive into detailed reviews and expert opinions on the newest tech products and software.',
    image: 'assets/vectors/chat-gpt.svg',
  ),
  Onboard(
    title: "Join a Community of Tech Enthusiasts",
    description:
        'Connect, share, and discuss the future of technology with like-minded readers.',
    image: 'assets/vectors/chat-gpt.svg',
  ),
];
