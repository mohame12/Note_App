import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_view_body.dart';
import '../consts/consts.dart';
import '../widgets/floatingactionbottom.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  static const String id='HomeScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        body: const NoteViewBody(),
        floatingActionButton: const FloatingActionBootomFAB(),
      ),
    );
  }
}


