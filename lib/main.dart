import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/Cubits/addnotecubit/add_note_cubit.dart';
import 'package:note_app/blocObsivise/blockobsirvis.dart';
import 'package:note_app/views/edit_view.dart';
import 'package:note_app/views/note_view.dart';
import 'consts/consts.dart';
void main()async
{
  Bloc.observer=SimpleBolcObserver();
 await Hive.initFlutter();
 Hive.openBox(KNotesBox);
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
