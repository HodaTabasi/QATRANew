import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constant.dart';

class CustomDialogBox extends StatefulWidget {
  final String title;
      final String? descriptions;
      final String? text;
  final Image? img;

  const CustomDialogBox(

      {
        required this.title,
        this.descriptions,
        this.text,
        this.img});

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              left: padding,
              top: 20.r + padding,
              right: padding,
              bottom: padding),
          margin: EdgeInsets.only(top: avatarRadius),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(padding),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(0.r, 10.r),
                    blurRadius: 10.r),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset("assets/like.png"),
              SizedBox(
                height: 15.h,
              ),
              Text(
                widget.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15.h,
              ),
              // Text(widget.descriptions,style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
              // SizedBox(height: 22,),
              // Align(
              //   alignment: Alignment.bottomRight,
              //   child: FlatButton(
              //       onPressed: (){
              //         Navigator.of(context).pop();
              //       },
              //       child: Text(widget.text,style: TextStyle(fontSize: 18),)),
              // ),
            ],
          ),
        ),
        // Positioned(
        //   left: padding,
        //   right: padding,
        //   child: CircleAvatar(
        //     backgroundColor: Colors.transparent,
        //     radius: avatarRadius,
        //     child: ClipRRect(
        //         borderRadius: BorderRadius.all(Radius.circular(avatarRadius)),
        //         child: Image.asset("assets/model.jpeg")
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
