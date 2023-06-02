import 'package:flutter/material.dart';
import 'package:spare_project/ui/home/home_screen.dart';
import 'package:spare_project/ui/splash/splash_screen.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

