import 'package:flutter/material.dart';

import 'custom_tff.dart';
class BottomShetFAB extends StatefulWidget {
   const BottomShetFAB({
    super.key,
  });

  @override
  State<BottomShetFAB> createState() => _BottomShetFABState();
}

class _BottomShetFABState extends State<BottomShetFAB> {
    GlobalKey<FormState> formkey=GlobalKey();


    AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
    
    String ? title,subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff303030),
          borderRadius: BorderRadius.circular(16)
      ),
      child:
      Padding(
        padding: const EdgeInsetsDirectional.only(top:40 ,end:20 ,start:20 ,bottom:20 ),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                 TextFF(hint: 'Title', maxLines: 1,onSaved: (val){title=val;},),


                const SizedBox(height: 25,),
                 TextFF(hint: 'contant', maxLines: 5,onSaved: (val){subtitle=val;},),


                const SizedBox(height: 80,),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),backgroundColor: const Color(0xff53EBD6).withOpacity(0.9)),


                        onPressed: (){
                          if(formkey.currentState!.validate())
                            {
                              formkey.currentState!.save();
                            }
                          else
                            {
                              autovalidateMode=AutovalidateMode.always;
                              setState(() {

                              });
                            }


                        },
                        child:const Text('Add',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),) ),
                  ),
                )
              ],
            ),
          ),
        ),
      ));
  }
}

