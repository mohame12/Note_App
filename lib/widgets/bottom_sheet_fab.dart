import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:note_app/Cubits/AddNoteCubit/add_note_state.dart';
import 'package:note_app/widgets/formvalidatinbottomsheet.dart';

class BottomShetFAB extends StatelessWidget {
  BottomShetFAB({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff303030),
          borderRadius: BorderRadius.circular(16)
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
            top: 40, end: 20, start: 20, bottom: 20),
        child:
        BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSuccesDataState) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
                child: FormValidationBottomSheet(isloading: state is AddNoteLoadDataState ? true :false,));
          },
        ),

      ),
    );
  }


}
