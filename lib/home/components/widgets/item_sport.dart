import 'dart:math';

import 'package:beflyprojeto/components/models/sport.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;
class ItemSport extends StatelessWidget {

  Sport? sport;
  ItemSport({super.key, this.sport});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
            borderRadius: BorderRadius.circular(36),), height: 166, width: 373.33,

        ),
      ),
        Positioned.fill(
          bottom: 8,
          left: 32,
          child: Row(
            children: [
              Text("${sport!.name}"),
              Image(height:191 , width: 181,image: AssetImage("assets/sports/${Random().nextInt(3) + 1}.png")),
            ],
          ),
        ),
    ]
    );
  }
}
