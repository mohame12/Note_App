import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/Cubits/addnotecubit/add_note_cubit.dart';

import 'custom_tff.dart';
class BottomShetFAB extends StatelessWidget {


    GlobalKey<FormState> formkey=GlobalKey();
    AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
    String ? title,subtitle;

  BottomShetFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff303030),
          borderRadius: BorderRadius.circular(16)
      ),
      child:
      Padding(
        padding:  EdgeInsetsDirectional.only(top:40 ,end:20 ,start:20 ,bottom:20 ),
        child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
  listener: (context, state) {
    if(state is NoteFailurState)
      {
        print('Failed ${state.error}');
      }
    if (state is NoteSuccesState)
      {
        Navigator.pop(context);
      }
  },

  builder: (context, state) {

    return ModalProgressHUD(inAsyncCall: state is NoteLoadingState ?true:false,
    child: buildForm(context));
  },
),
        ),
      ));
  }

  
  
  
  Form buildForm(BuildContext context) {
    return Form(
          autovalidateMode: autovalidateMode,
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
                            //setState(() {

                            //});
                          }


                      },
                      child:const Text('Add',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),) ),
                ),
              )
            ],
          ),
        );
  }
}

