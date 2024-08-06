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
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 54),
                child: Text("Apostas ao Vivo: Estratégias e Dicas para o Sucesso",
                    style: TextStyle(
                        //fontFamily: GoogleFonts.montserrat().fontFamily,
                        fontWeight: FontWeight.w900,
                        fontSize: 14)),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 54),
                child: Text("Explore as melhores práticas ...",
                    style: TextStyle(
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                        fontWeight: FontWeight.w700,
                        fontSize: 12)),
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ItemTab(
                          name: "Futebol",
                          smaller: true,
                          imagePath: "assets/bola.png",
                        ),
                      )),
                  SizedBox(width: 8,),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ItemTab(
                          smaller: true,
                          name: "Basquete",
                          imagePath: "assets/bola_basquete.png",
                        ),
                      )),
                ],
              )
            ],
          ),
        ));
  }
}