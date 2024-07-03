

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class SimpleBolcObserver extends BlocObserver
{
  void Onchange(BlocBase bloc,Change change)
  {
    debugPrint('change=$change');
  }
}