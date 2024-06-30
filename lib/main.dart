import 'package:flutter/material.dart';
import 'package:note_app/screens/homescreen.dart';
void main()
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      HomeScreen.id:(context)=>HomeScreen(),
    },
    initialRoute: HomeScreen.id,
  );
  }
}
