import 'dart:math';

import 'package:beflyprojeto/components/models/championship.dart';
import 'package:beflyprojeto/ui/colors.dart';
import 'package:flutter/material.dart';

class ItemChampionship extends StatelessWidget {
  Championship championship;

  ItemChampionship({super.key, required this.championship});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            color: kPrimaryDarkColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(24),
          ),
          height: 80,
          width: 80,
        ),
         Positioned.fill(
            child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image(
                fit: BoxFit.cover,
               // height: 36, width: 143, image: AssetImage("assets/championships/${Random().nextInt(4) + 1}.png")),
                height: 40, width: 40, image: NetworkImage("${championship.image}")),
          ),
        ))
      ]),
    );
  }
}
