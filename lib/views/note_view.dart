import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  static const String id='HomeScreen';
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body: const NoteViewBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent.withOpacity(0.9),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28)
          ),

          onPressed: (){},
          child: const Icon(Icons.add ),
        ),
      ),
    );
  }
}
