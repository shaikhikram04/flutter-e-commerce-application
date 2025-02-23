import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: IAppTheme.lightTheme,
      darkTheme: IAppTheme.darkTheme,
    );
  }
}
