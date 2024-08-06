import 'package:beflyprojeto/ui/colors.dart';
import 'package:flutter/material.dart';

class RoundedButtonIcon extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPressed;

  const RoundedButtonIcon({
    Key? key,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryLightColor,
            //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
          ),
          child: Center(
            child: Icon(
              icon,
              size: 20,
              color: Colors.black,
            ),
          )),
    );
  }
}
