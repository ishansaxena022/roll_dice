import 'package:flutter/material.dart';

class StyleText extends StatelessWidget{
  const StyleText(this.inp,{super.key});
  final String inp;
  @override
  Widget build(context){
    return(Text(
              inp,
              style: const TextStyle(color: Colors.black,fontSize:25,fontWeight:FontWeight.bold),
            ));
  }
}