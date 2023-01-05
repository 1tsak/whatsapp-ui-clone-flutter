import 'package:flutter/material.dart';
import 'package:whatsapp_ui/responsive/responsive_lyt.dart';
import 'package:whatsapp_ui/screens/mobile_sreen_layout.dart';
import 'package:whatsapp_ui/screens/web_screen_layout.dart';
import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp UI",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}