import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCardMatch extends StatelessWidget {
  const ItemCardMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 394,
        width: 358,
        padding: const EdgeInsets.only(top: 10, right: 16, bottom: 24, left: 16),
        child: Card(
          color: const Color(0xFFFDFDFD),
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Column(
                        children: [
                          Image(
                              height: 48,
                              width: 48,
                              image: AssetImage("assets/3bar.png")),
                          SizedBox(height: 21,),
                          Text("data")
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      child: Column(
                        children: [
                          const Text("Ao vivo"),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                              height: 36,
                              width: 73,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: const Color(0xffEFEFEF)),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(child: Text("60''"),),

                          ),

                        ],
                      ),
                    ),
                    SizedBox(width: 40,),
                    Container(
                      child: const Column(
                        children: [
                          Image(
                              height: 48,
                              width: 48,
                              image: AssetImage("assets/3bar.png")),
                          SizedBox(height: 21,),
                          Text("data")
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Container(child: Text("2:2", style: TextStyle(fontSize: 50, fontFamily:GoogleFonts.montserrat().fontFamily,  ),),),
              Container(
                child: Image(
                    image: AssetImage("assets/matches/img_tempo_faltas.png")),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Column(
                      children: [
                        Image(
                            height: 48,
                            width: 48,
                            image: AssetImage("assets/3bar.png")),
                        Text("data")
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: const Column(
                            children: [
                              Image(
                                  height: 48,
                                  width: 48,
                                  image: AssetImage("assets/3bar.png")),
                              Text("data")
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(width: 40,),
                  Container(
                    child: const Column(
                      children: [
                        Image(
                            height: 48,
                            width: 48,
                            image: AssetImage("assets/3bar.png")),
                        Text("data")
                      ],
                    ),
                  ),

                ],
              ),
              Divider(),
              Text("ver mais")

            ],
          ),
        ));
  }
}
