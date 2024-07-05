import 'package:flutter/material.dart';
import 'package:note_app/Cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/colorWidget.dart';
import 'custom_appbar.dart';
import 'custom_tff.dart';

class EditViewUI extends StatefulWidget {
  const EditViewUI({
    super.key, required this.note,
  });
  final NoteModel note;

  @override
  State<EditViewUI> createState() => _EditViewUIState();
}

class _EditViewUIState extends State<EditViewUI> {
   String ? title,content;
   Color? color;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsetsDirectional.only(top:16 ,start:16 ,end:16 ),
      child: Column(
        children: [

          CustomAppbar(title: 'Edite Note ', icon: Icons.done, ontap: () {
            // widget.note.title=title??widget.note.title;
            // widget.note.subtitle=content??widget.note.subtitle;
            AddNoteCubit.get(context).updateNote(widget.note, title, content,AddNoteCubit.get(context).color);
            Navigator.pop(context);

          },),

          const SizedBox(height: 30,),

          TextFF(hint: 'Title', maxLines: 1,onChanged: (val){
            title=val;
          },),

          const SizedBox(height: 20,),

          TextFF(hint: 'Content', maxLines: 5,onChanged: (val){
            content=val;
          },),
          SizedBox(height: 20,),
          EditColorForEditUI(note: widget.note,)
        ],
      ),
    );
  }
}



class EditColorForEditUI extends StatefulWidget {
  const EditColorForEditUI({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColorForEditUI> createState() => _EditColorForEditUIState();
}

class _EditColorForEditUIState extends State<EditColorForEditUI> {
late int c;

  List<Color> color=[
    const Color(0xffF6E9E9),
    const Color(0xffE16428),
    const Color(0xff272121),
    const Color(0xff363333)
  ];
  @override
  void initState() {
    // TODO: implement initState
     c=color.indexOf(Color(widget.note.color));
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>GestureDetector(
            onTap: (){

              setState(() {
                c=index;
                AddNoteCubit.get(context).color=color[index];
              });
            },
              child: ColorWidget(isActive:c==index , color: color[index])),
          separatorBuilder:(context,index)=>const SizedBox(width: 10,) ,
          itemCount:color.length),
    );
  }
}
