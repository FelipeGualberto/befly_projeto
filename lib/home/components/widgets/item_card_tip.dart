import 'package:beflyprojeto/home/components/widgets/item_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCardTip extends StatelessWidget {
  const ItemCardTip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 225,
        child: Card(
          color: const Color(0xFFFDFDFD),
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 225,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36)),
                  child: Image(image: AssetImage("assets/teste.png")),
                ),
              ),
              Text("Ver todas",
                  style: TextStyle(
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      fontWeight: FontWeight.w700,
                      fontSize: 14)),
              Text("Ver todas",
                  style: TextStyle(
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      fontWeight: FontWeight.w700,
                      fontSize: 14)),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: const Color(0xffEFEFEF)),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ItemTab(
                        name: "Futebol",
                        imagePath: "assets/bola.png",
                      )),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: const Color(0xffEFEFEF)),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ItemTab(
                        name: "Basquete",
                        imagePath: "assets/bola_basquete.png",
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
