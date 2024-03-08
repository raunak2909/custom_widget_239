import 'package:flutter/material.dart';

class AppCustomElevatedBtn extends StatefulWidget{
  String mTitle;
  IconData? mIconData;
  Color mBgColor;
  Color mFgColor;
  Size? mSize;
  double mBorderRadius;
  VoidCallback onTap;

  AppCustomElevatedBtn({
    required this.onTap,
    required this.mTitle,
    this.mIconData,
    this.mBgColor = Colors.blue,
    this.mFgColor = Colors.white,
    this.mSize,
    this.mBorderRadius = 11.0,
  });


  @override
  State<StatefulWidget> createState() => AppCustomElevatedBtnState();
}

class AppCustomElevatedBtnState extends State<AppCustomElevatedBtn>{

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      child: widget.mIconData != null ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.mIconData),
          SizedBox(width: 11,),
          Text(widget.mTitle),
        ],
      ) : Text(widget.mTitle),
      style: ElevatedButton.styleFrom(
          minimumSize: widget.mSize ?? Size(200, 40),
          maximumSize: widget.mSize ?? Size(200, 40),
          backgroundColor: widget.mBgColor,
          foregroundColor: widget.mFgColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.mBorderRadius)
          )
      ),
    );
  }
}