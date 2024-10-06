import 'package:flutter/material.dart';
import '/config/theme/my_theme.dart';
import '/core/routes_manager.dart';
import '/presentation/screens/home/home_screen.dart';
import '/presentation/screens/splash/splash_screen.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.splashRoute: (_) => SplashScreen(),
        RoutesManager.homeRoute: (_) => HomeScreen(),
      },
      initialRoute: RoutesManager.splashRoute,
    );
  }
}