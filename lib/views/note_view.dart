import 'package:flutter/material.dart';
import 'package:note_app/Cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:note_app/widgets/note_view_body.dart';
import '../widgets/floatingactionbottom.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  static const String id='HomeScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: AddNoteCubit.get(context).scaffoldkey,
        body: const NoteViewBody(),
        floatingActionButton: const FloatingActionBootomFAB(),
      ),
    );
  }
}


