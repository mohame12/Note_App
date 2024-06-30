import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/widgets/note_view_body.dart';
import '../widgets/bottom_sheet_fab.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});

  static const String id='HomeScreen';

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  GlobalKey<ScaffoldState> scaffoldkey=GlobalKey();
  IconData icon=Icons.add;
  bool isShown=false;
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        body: const NoteViewBody(),

        floatingActionButton: FloatingActionButton(onPressed: ()
        {
          onPressed(context);
        },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28)
          ),
          backgroundColor: Colors.blue.withOpacity(0.9),
          child:Icon(icon),),
      ),
    );
  }




  void onPressed(BuildContext context) {
     if(isShown==false) {
      scaffoldkey.currentState?.showBottomSheet(
            (context) =>
           BottomShetFAB(),).closed.then((e){
        isShown=false;
        setState(() {
          icon=Icons.add;
        });
      });
      isShown=true;
      setState(() {
        icon=FontAwesomeIcons.minus;
      });
    }else
      {
        Navigator.pop(context);
        isShown=false;
        setState(() {
          icon=Icons.add;
        });
      }
  }

}


