import 'package:flutter/material.dart';
import 'note_Item_on_listview.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(child: Padding(
      padding: const EdgeInsetsDirectional.only(top: 10),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) =>  const Padding(
          padding: EdgeInsetsDirectional.only(top: 5),
          child: NoteItem(),
        ),
        itemCount: 10,
      ),
    ));
  }
}
