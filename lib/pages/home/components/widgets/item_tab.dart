import 'package:flutter/widgets.dart';

class ItemTab extends StatelessWidget {
  String name;
  bool smaller;
  String imagePath;

  ItemTab({super.key, this.name = "", this.imagePath = "", this.smaller = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(children: [
        Image(height: smaller? 12: 20, width: smaller? 12: 20, image: AssetImage(imagePath)),
        SizedBox(width: 8,),
        Text(name, style: TextStyle(fontSize: smaller? 10 : 12),)
      ],),
    );
  }
}
