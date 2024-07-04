import 'package:flutter/material.dart';

const String KNotesBox='notes_box';
GlobalKey<ScaffoldState> scaffoldkey=GlobalKey();
GlobalKey<FormState> formkey=GlobalKey();
AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
IconData icon=Icons.add;
bool isShown=false;