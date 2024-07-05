import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/Cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:note_app/widgets/colorWidget.dart';

class ColorsListVeiw extends StatefulWidget {
  const ColorsListVeiw({super.key});

  @override
  State<ColorsListVeiw> createState() => _ColorsListVeiwState();
}

class _ColorsListVeiwState extends State<ColorsListVeiw> {
  int CurrentIndex=0;
  List<Color> color=[
    const Color(0xffF6E9E9),
    const Color(0xffE16428),
    const Color(0xff272121),
    const Color(0xff363333)
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder:(context,index)=>GestureDetector(
            onTap: ()
            {

              setState(() {
                CurrentIndex=index;
                AddNoteCubit.get(context).color=color[index];
              });
            },
            child: ColorWidget(
              isActive:CurrentIndex==index, color: color[index] ,),
          ) ,
          separatorBuilder:(context,index)=>const SizedBox(width: 10,) ,
          itemCount:color.length ),
    );
  }
}
