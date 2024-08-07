import 'package:beflyprojeto/components/models/won_bet.dart';
import 'package:beflyprojeto/ui/styles.dart';
import 'package:flutter/material.dart';


class ItemBetWon extends StatelessWidget {
  WonBet wonbet;
   ItemBetWon({super.key, required this.wonbet});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 92,
        width: 310,
        child: Card(
            color: const Color(0xFFFDFDFD),
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child:  Image(
                      height: 36,
                      image: NetworkImage("${wonbet.userAvatar}")),
                ),
                SizedBox(height: 16,),
                Container(
                  width: 146,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("${wonbet.user}"),
                      Text("${wonbet.score}"),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("BRA X ARG", style: ktextStyleMontserrat10,),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.circle,
                              size: 4,
                            ),
                          ),
                          Text("Há 10 minutos", style: ktextStyleMontserrat10),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                        height: 36,
                        width: 36,
                        image: AssetImage("assets/bets/bet365.png")),
                    SizedBox(height: 4,),
                    Text("${wonbet.id}")
                  ],
                ),
              ],
            )
        ));
  }
}
