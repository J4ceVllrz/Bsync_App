import 'package:bsync_app1/misc/colors_texts.dart';
import 'package:bsync_app1/pages/bottom_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  setStatusBarColor();
  runApp(const MainApp());
}

void setStatusBarColor() {
  // Set the system UI overlay style based on the initial background color
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.mainBgColor,
      statusBarIconBrightness: Brightness.dark));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}
// debugShowCheckedModeBanner: false,
//       home: BottomBar(),