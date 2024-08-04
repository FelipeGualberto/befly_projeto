import 'package:flutter/material.dart';

class ItemFilter extends StatefulWidget {
  bool isLive;
  bool isSelected;
  String title;
  ItemFilterState? state;

  ItemFilter({super.key, this.title = "", this.isLive = false, this.isSelected = false});

  @override
  State<ItemFilter> createState() {
    state = ItemFilterState();
    return state!;
  }
}

class ItemFilterState extends State<ItemFilter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 48,
      decoration: BoxDecoration(
        color: widget.isSelected? Colors.black : Colors.white,
        border: Border.all(width: 1, color: Color(0xffEFEFEF)),
        borderRadius: BorderRadius.circular(100),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(widget.isLive)
          Icon(
            Icons.circle,
            size: 9,
            color: Color(0xffEB8989),
          ),
          if(widget.isLive)  SizedBox(
            width: 8,
          ),
          Text(
            '${widget.title}',
            style: TextStyle(fontSize: 12, color: widget.isSelected? Colors.white : Colors.black),
          )
        ],
      ),
    );
  }
}
