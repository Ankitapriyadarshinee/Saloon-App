import 'package:flutter/material.dart';
import 'phone.dart';
import 'splashscreen.dart';
import 'otp.dart';
import 'signup.dart';
import 'location.dart';

void main() {
  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 233, 231, 236)),
        useMaterial3: true,
      ),
      //  home:  Mysplash(),
         initialRoute: 'splashscreen',
        routes: {
          'splashscreen':(context)=>Mysplash(),
          'phone':(context)=>Myphone(),
          'otp' :(context)=>Myotp(),
          'signup':(context)=>Mysignup(),
          'location':(context) => Mylocation()
        },
    );
  }
}

