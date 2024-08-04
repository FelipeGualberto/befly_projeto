import 'package:flutter/widgets.dart';

class ItemTab extends StatelessWidget {
  String name;

  String imagePath;

  ItemTab({super.key, this.name = "", this.imagePath = ""});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(children: [
        Image(height: 20, width: 20, image: AssetImage(imagePath)),
        SizedBox(width: 8,),
        Text(name)
      ],),
    );
  }
}
