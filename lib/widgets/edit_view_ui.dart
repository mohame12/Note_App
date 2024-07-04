import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'custom_tff.dart';

class EditViewUI extends StatelessWidget {
  const EditViewUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsDirectional.only(top:16 ,start:16 ,end:16 ),
      child: Column(
        children: [

          CustomAppbar(title: 'Edite Note ', icon: Icons.done,),

          SizedBox(height: 30,),

          TextFF(hint: 'Title', maxLines: 1),

          SizedBox(height: 20,),

          TextFF(hint: 'Content', maxLines: 5)
        ],
      ),
    );
  }
}