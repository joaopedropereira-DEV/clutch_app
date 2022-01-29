import 'package:clutch_app/constants.dart';
import 'package:clutch_app/pages/home_page.dart';
import 'package:clutch_app/pages/onboarding_page.dart';
import 'package:clutch_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ClutchApp());

class ClutchApp extends StatelessWidget {
  const ClutchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clutch App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kAccentColor,
        backgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
      ),
      initialRoute: AppRoutes.ON_BOARDING,
      routes: {
        AppRoutes.ON_BOARDING: (context) => const OnBoardingPage(),
        AppRoutes.HOME: (context) => const HomePage(),
      },
    );
  }
}
