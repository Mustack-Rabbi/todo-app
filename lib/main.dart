import 'package:flutter/material.dart';
import 'package:todo_app/home_page.dart';

import 'splash_screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        applyElevationOverlayColor: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff1B5E20)),
        useMaterial3: true,
    
      ),
      home: SplashScreen(),
      routes: {
        '/home_page': (context) => HomePage()
       
    
      },
    );
  }
}
