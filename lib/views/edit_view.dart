import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_tff.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});
static const String id='Editview';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsetsDirectional.only(top:16 ,start:16 ,end:16 ),
          child: Column(
            children: [
              CustomAppbar(title: 'Edite Note ', icon: Icons.done,),
              SizedBox(height: 30,),
              TextFF(hint: 'Title', maxLines: 1),
              SizedBox(height: 20,),

              TextFF(hint: 'Content', maxLines: 5)
            ],
          ),
        ),
      ),
    );
  }
}
