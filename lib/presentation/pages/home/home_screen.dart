import 'package:chat_ai/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Handle menu button press
          },
        ),
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/vectors/chat-gpt.svg',
              width: 40,
              height: 40,
            ),
            SizedBox(width: 10),
            Text(
              'Chat AI',
              style: TextStyle(
                fontSize: 22,
                color: AppColors.secondBackground,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        centerTitle: true,

      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child:ListView( ) ),
            Container(
              margin: const EdgeInsets.only(bottom: 20,left:16,right: 16,top: 10),
              child: Row(
                children: [
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: AppColors.background,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}