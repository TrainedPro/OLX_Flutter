import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'constants/colors.dart';
import 'views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark, // Use a dark theme
        primaryColor: AppColor.primaryGreenColor,
        scaffoldBackgroundColor: AppColor.darkBackgroundColor,
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: AppColor.whiteColor),
          displayMedium: TextStyle(color: AppColor.whiteColor),
          displaySmall: TextStyle(color: AppColor.whiteColor),
          headlineLarge: TextStyle(color: AppColor.whiteColor),
          headlineMedium: TextStyle(color: AppColor.whiteColor),
          headlineSmall: TextStyle(color: AppColor.whiteColor),
          titleLarge: TextStyle(color: AppColor.whiteColor),
          titleMedium: TextStyle(color: AppColor.whiteColor),
          titleSmall: TextStyle(color: AppColor.whiteColor),
          bodyLarge: TextStyle(color: AppColor.whiteColor),
          bodyMedium: TextStyle(color: AppColor.whiteColor),
          bodySmall: TextStyle(color: AppColor.whiteColor),
          labelLarge: TextStyle(color: AppColor.whiteColor),
          labelMedium: TextStyle(color: AppColor.whiteColor),
          labelSmall: TextStyle(color: AppColor.whiteColor),
        ),
        iconTheme: const IconThemeData(
          color: AppColor.whiteColor,
        ),
      ),
      home: const HomePage(),
    );
  }
}
