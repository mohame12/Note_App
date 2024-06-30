import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  static const String id='HomeScreen';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: NoteViewBody(),
      ),
    );
  }
}
