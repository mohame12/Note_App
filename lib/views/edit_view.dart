import 'package:flutter/material.dart';

import '../widgets/edit_view_ui.dart';


class EditView extends StatelessWidget {
  const EditView({super.key});
static const String id='Editview';
  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: EditViewUI(),
      ),
    );
  }
}


