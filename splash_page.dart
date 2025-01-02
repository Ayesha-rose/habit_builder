//import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:habit_builder/ui/onboarding/onboarding_page.dart';
import 'package:habit_builder/utils/labels.dart';
import 'package:habit_builder/ui/components/bg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingPage(),
          ),
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;
    return Material(
      child: Bg(
          child: Column(
        children: [
          AspectRatio(
            aspectRatio: 4 / 3,
            child: Center(
              child: Text(
                Labels.welcomeTo,
                style: style.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      )),
    );
  }
}
