import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppCustomContainer extends StatelessWidget{

  VoidCallback onTap;
  bool isEnable;

  AppCustomContainer({required this.onTap, this.isEnable = true});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isEnable ? onTap : (){

      },
      child: Container(
      width: 100,
        height: 100,
        color: isEnable ? Colors.blue : Colors.grey,
      ),
    );

  }

}