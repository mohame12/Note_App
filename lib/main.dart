import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/views/edit_view.dart';
import 'package:note_app/views/note_view.dart';
import 'consts/consts.dart';
void main()async
{
 await Hive.initFlutter();
 Hive.openBox(KNotesBox);
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
      EditView.id:(context)=>const EditView(),
    },
    initialRoute: NoteView.id,
  );
  }
}
