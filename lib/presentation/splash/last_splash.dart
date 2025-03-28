import 'package:chat_ai/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LastSplash extends StatelessWidget {
  const LastSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Revolutionary AI language model, transforming communication.',
                style: TextStyle(
                    fontSize: 24,
                    color: AppColors.secondBackground,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Chat AI is a chatbot that can help you with your daily tasks',
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.secondBackground,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: Text('Get Started'),
              )
            ],
          ),
        ),
      ),
    );
  }
}