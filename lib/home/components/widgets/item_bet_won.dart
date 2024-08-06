import 'package:beflyprojeto/home/components/widgets/item_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemBetWon extends StatelessWidget {
  const ItemBetWon({super.key});

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
                  child: const Image(
                      height: 36,
                      image: AssetImage("assets/img_perfil.png")),
                ),
                SizedBox(height: 16,),
                Container(
                  width: 146,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("data"),
                      Text("data"),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("data"),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.circle,
                              size: 4,
                            ),
                          ),
                          Text("data"),
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
                        image: AssetImage("assets/img_perfil.png")),
                    SizedBox(height: 4,),
                    Text("teste")
                  ],
                ),
              ],
            )
        ));
  }
}
