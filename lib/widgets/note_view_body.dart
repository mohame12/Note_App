import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsetsDirectional.only(top: 16,start: 16,end: 16),
      child: Column(
        children: [
         CustomAppbar(title: 'N O T E S', icon:Icons.search, ontap: () {  } ,),
          const ListViewWidget()
        ],
      ),
    );
  }
}


