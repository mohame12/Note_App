import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacementNamed(context, EditView.id);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.amber
        ),
        child:  Padding(
          padding: const EdgeInsetsDirectional.only(top: 24,start: 10,bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text('Flutter Tips',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',color: Colors.black,fontSize: 26),),
                subtitle:  Padding(
                  padding: const EdgeInsetsDirectional.only(top: 16),
                  child: Text('build your career with Flutter',style: TextStyle(fontFamily: 'Poppins',color: Colors.black.withOpacity(0.5),fontSize: 20),),
                ),
                trailing: IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.trash,color: Colors.black,size: 24,)),
              ),
               Padding(
                padding: const EdgeInsetsDirectional.only(end: 22,top: 16,bottom: 10 ),
                child: Text('Jun30,2024',style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.5)),),
              )
            ],
          ),
        ),
      ),
    );
  }
}