import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:game_store/src/home/home_page.dart';
import 'package:game_store/src/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const MyHomePage(),
      },
      builder: (context, child) {
        return DeviceFrame(
          device: Devices.ios.iPhone13ProMax,
          orientation: Orientation.portrait,
          isFrameVisible: true,
          screen: child!,
        );
      },
    );
  }
}
