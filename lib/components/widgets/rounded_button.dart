import 'dart:ui';

import 'package:beflyprojeto/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundedButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final Color color, textColor;
  final Color? borderColor;
  final String? pathImage;
  double? height;
  double? width;
  TextStyle? textStyle;
  int radius;

  RoundedButton({
    Key? key,
    required this.text,
    this.pathImage,
    this.textStyle,
    this.height,
    this.width,
    this.onPressed,
    this.radius = 30,
    this.color = kPrimaryLightColor,
    this.textColor = Colors.white,
    this.borderColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyleCreated = TextStyle(color: textColor);
    if (textStyle != null) {
      textStyleCreated = textStyle!.apply(color: textColor);
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              side: borderColor != null ? BorderSide(
                  width: 1.0,
                  color: borderColor! ) : null,
              //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),

            ),
            child: Container(
              width: width,
              height: height,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (pathImage != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image(
                          fit: BoxFit.cover,
                          height: 24,
                          width: 24,
                          image: AssetImage("$pathImage")),
                    ),
                  //SizedBox(width: 40,),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    text!,
                    style: textStyleCreated,
                    textAlign: TextAlign.center,
                  ),
                  Spacer(
                    flex: 1,
                  )
                ],
              ),
            ))
      ],
    );
  }
}
