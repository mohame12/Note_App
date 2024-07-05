import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:note_app/consts.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_view.dart';
import 'package:note_app/views/note_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Cubits/blocObserver.dart';

void main()async
{
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  print('$kNotesBox is open');


  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  return MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => AddNoteCubit(),),

    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
          brightness: Brightness.dark,
      fontFamily: 'Poppins'),
      routes: {
        NoteView.id:(context)=> const NoteView(),
        EditView.id:(context)=>const EditView(),
      },
      initialRoute: NoteView.id,
    ),
  );
  }
}
