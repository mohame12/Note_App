import 'package:flutter/material.dart';
import 'package:note_app/views/note_view.dart';
void main()
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    theme: ThemeData(brightness: Brightness.dark),

    debugShowCheckedModeBanner: false,
    routes: {
      NoteView.id:(context)=>NoteView(),
    },
    initialRoute: NoteView.id,
  );
  }
}
