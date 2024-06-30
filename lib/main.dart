import 'package:flutter/material.dart';
import 'package:note_app/views/note_view.dart';
void main()
{
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,

    theme: ThemeData(
        brightness: Brightness.dark,
    fontFamily: 'Poppins'),
    routes: {
      NoteView.id:(context)=> const NoteView(),
    },
    initialRoute: NoteView.id,
  );
  }
}
