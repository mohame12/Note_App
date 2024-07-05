import 'package:flutter/material.dart';
import 'package:note_app/Cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/colorsListVeiw.dart';
import '../consts.dart';
import 'custom_tff.dart';

class FormValidationBottomSheet extends StatelessWidget {
  const FormValidationBottomSheet({
    super.key, required this.isloading,
  });
  final bool isloading;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AddNoteCubit.get(context).autovalidateMode,
      key: AddNoteCubit.get(context).formkey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFF(
            hint: 'Title',
            maxLines: 1,
            onSaved: (val) {
              AddNoteCubit.get(context).title = val;
            },
          ),
          const SizedBox(
            height: 25,
          ),
          TextFF(
            hint: 'contant',
            maxLines: 5,
            onSaved: (val) {
              AddNoteCubit.get(context).subtitle = val;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ColorsListVeiw(),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 55,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor:
                          const Color(0xff53EBD6).withOpacity(0.9)),
                  onPressed: () {
                    if (AddNoteCubit.get(context)
                        .formkey
                        .currentState!
                        .validate()) {
                      AddNoteCubit.get(context).formkey.currentState!.save();

                      NoteModel note = NoteModel(
                          title: AddNoteCubit.get(context).title!,
                          subtitle: AddNoteCubit.get(context).subtitle!,
                          date:formattedcurrentdate,
                          color: AddNoteCubit.get(context).color.value);
                      AddNoteCubit.get(context).addNote(note);


                      AddNoteCubit.get(context).fetchAllNoteList(note);

                    } else {
                      AddNoteCubit.get(context).autovalidateMode =
                          AutovalidateMode.onUserInteraction;
                    }
                  },
                  child:isloading ?CircularProgressIndicator(
                    color: Colors.black,
                  ):
                  Text(
                    'Add',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
            ),
          ),

        ],
      ),
    );
  }
}
