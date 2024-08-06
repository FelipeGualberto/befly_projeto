import 'package:beflyprojeto/components/models/match.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCardMatch extends StatelessWidget {
  MatchModel match;
  ItemCardMatch({super.key, required this.match});

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
                      width: 50,
                      child:  Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image(
                                fit: BoxFit.cover,
                                height: 48,
                                width: 48,
                                image: NetworkImage("${match.teamAImage}")),
                          ),
                          SizedBox(height: 21,),
                          Text("${match.teamA}", overflow: TextOverflow.clip, maxLines: 1,)
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
                      width: 50,
                      child:  Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image(
                                fit: BoxFit.cover,
                                height: 48,
                                width: 48,
                                image: NetworkImage("${match.teamBImage}")),
                          ),
                          SizedBox(height: 21,),
                          Text("${match.teamB}", overflow: TextOverflow.clip, maxLines: 1,)
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Container(child: Text("${match.teamAScore.toString()[0]}:${match.teamBScore.toString()[0]}", style: TextStyle(fontSize: 50, fontFamily:GoogleFonts.montserrat().fontFamily,  ),),),
              Container(
                child: Image(
                    image: AssetImage("assets/matches/img_tempo_faltas.png")),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child:  Column(
                      children: [
                        Image(
                            height: 48,
                            width: 48,
                            image: AssetImage("assets/matches/1xbet.png")),
                        Text("${match.xbetOddsAvg}")
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
                          child:  Column(
                            children: [
                              Image(
                                  height: 48,
                                  width: 48,
                                  image: AssetImage("assets/matches/betsafe.png")),
                              Text("${match.betsafeOddsAvg}")
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(width: 40,),
                  Container(
                    child:  Column(
                      children: [
                        Image(
                            height: 48,
                            width: 48,
                            image: AssetImage("assets/matches/betsson.png")),
                        Text("${match.betssonOddsAvg}")
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
