import 'package:flutter/material.dart';

class Topo extends StatelessWidget {
  const Topo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(
            height: 36, width: 143, image: AssetImage("assets/imperio.png")),
        const Spacer(),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: const Image(
              height: 48,
              width: 48,
              image: AssetImage("assets/img_perfil.png")),
        ),
        const SizedBox(width: 18),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: const Image(
              height: 48, width: 48, image: AssetImage("assets/3bar.png")),
        ),
      ],
    );
  }
}
