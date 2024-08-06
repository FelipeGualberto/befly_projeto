import 'package:beflyprojeto/ui/colors.dart';
import 'package:flutter/material.dart';

class ItemBonus extends StatelessWidget {
  const ItemBonus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8, bottom: 16),
        padding: const EdgeInsets.only(top: 16,right: 24, bottom: 16, left: 24),
        constraints: BoxConstraints( maxWidth: 568 ),
        decoration: BoxDecoration(
          color: kPrimaryLightColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(24),

        ),
        child:
        Row(
          children: [
            Image(
                height: 12,
                width: 12,
                image: AssetImage("assets/bets/stake.png")),
            SizedBox(
              width: 8,
            ),
            Text(
              "name",
              style: TextStyle(fontSize: 12),
            )
          ],
        )
    );
  }
}
