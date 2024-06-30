import 'package:flutter/material.dart';

import 'custom_tff.dart';
class BottomShetFAB extends StatelessWidget {
  const BottomShetFAB({
    super.key,
  });

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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const TextFF(hint: 'Title', maxLines: 1,),
              const SizedBox(height: 25,),
              const TextFF(hint: 'contant', maxLines: 5,),
              const SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsetsDirectional.only(bottom: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),backgroundColor: const Color(0xff53EBD6).withOpacity(0.9)),
                      onPressed: (){},
                      child:const Text('Add',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),) ),
                ),
              )
            ],
          ),
        ),
      ));
  }
}

