import 'dart:math';

import 'package:flutter/material.dart';

class ItemChampionship extends StatelessWidget {
  const ItemChampionship({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xffC4B23A).withOpacity(0.2),
            borderRadius: BorderRadius.circular(24),
          ),
          height: 80,
          width: 80,
        ),
         Positioned.fill(
            child: Center(
          child: Image(
              height: 36, width: 143, image: AssetImage("assets/championships/${Random().nextInt(4) + 1}.png")),
        ))
      ]),
    );
  }
}
