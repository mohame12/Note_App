import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:note_app/Cubits/AddNoteCubit/add_note_state.dart';
import 'bottom_sheet_fab.dart';

class FloatingActionBootomFAB extends StatelessWidget {
  const FloatingActionBootomFAB({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        return FloatingActionButton(onPressed: () {
          if (AddNoteCubit.get(context).isShown== false) {
            AddNoteCubit.get(context).scaffoldkey.currentState
                ?.showBottomSheet(
                  (context) =>
                  BottomShetFAB(),)
                .closed
                .then((e) {
                  AddNoteCubit.get(context).closeFABMunel();
            });


            AddNoteCubit.get(context).closeFAB1state();
          } else {

            Navigator.pop(context);
            AddNoteCubit.get(context).openFAB0state();
          }
        },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28)
          ),
          backgroundColor: Colors.blue.withOpacity(0.9),
          child: Icon(AddNoteCubit.get(context).icon),);
      },
    );
  }
}
