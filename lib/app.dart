import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shoestore/features/authentication/views/onboarding/onboarding.dart';
import 'package:shoestore/utils/themes/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
