import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:flutter_e_commerce/utils/theme/theme.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: IAppTheme.lightTheme,
      darkTheme: IAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}
