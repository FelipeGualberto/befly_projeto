import 'package:beflyprojeto/home/components/widgets/item_bet_won.dart';
import 'package:beflyprojeto/home/components/widgets/item_bonus.dart';
import 'package:beflyprojeto/home/components/widgets/item_card_match.dart';
import 'package:beflyprojeto/home/components/widgets/item_card_tip.dart';
import 'package:beflyprojeto/home/components/widgets/item_championship.dart';
import 'package:beflyprojeto/home/components/widgets/item_filter.dart';
import 'package:beflyprojeto/home/components/widgets/item_sport.dart';
import 'package:beflyprojeto/home/components/widgets/rounded_button_icon.dart';
import 'package:beflyprojeto/home/components/widgets/rounded_button_text.dart';
import 'package:beflyprojeto/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(context),
        builder: (context, model, child) {
          model.tabControler =
              TabController(length: model.tabList.length, vsync: this);
          return Scaffold(
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(bottom: 32),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      const Color(0xffF5D80A).withOpacity(0.1),
                      const Color(0xFFFFFFFF),
                      const Color(0xFFFFFFFF),
                      const Color(0xFFFFFFFF),
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
                padding: const EdgeInsets.only(left: 64, right: 64, top: 32),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        const Image(
                            height: 36,
                            width: 143,
                            image: AssetImage("assets/imperio.png")),
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
                              height: 48,
                              width: 48,
                              image: AssetImage("assets/3bar.png")),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                        height: 50,
                        width: 500,
                        child: TabBar(
                            controller: model.tabControler,
                            tabs: model.tabList)),
                    SizedBox(
                      height: 166,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: model.listSports.length,
                        //shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemSport(
                            sport: model.listSports[index],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: model.listChampionships.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return const ItemChampionship();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        ToggleButtons(
                            isSelected: model.isSelected,
                            renderBorder: false,
                            fillColor: Colors.white,
                            hoverColor: Colors.white.withOpacity(0),
                            splashColor: Colors.white.withOpacity(0),
                            selectedColor: Colors.white,
                            onPressed: (int index) {
                              model.isSelected[index] =
                                  !model.isSelected[index];
                              model.filterList[index].state!.setState(() {
                                model.filterList[index].isSelected =
                                    !model.filterList[index].isSelected;
                              });
                            },
                            children: model.filterList),
                        const Spacer(),
                        const Text("Acompanhe todas as partidas"),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                            width: 67,
                            height: 48,
                            child: RoundedButtonIcon(
                              icon: Icons.arrow_forward,
                              onPressed: () {},
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 395,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: model.listMatchs.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return const ItemCardMatch();
                        },
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Dicas",
                            style: TextStyle(
                                fontFamily: GoogleFonts.montserrat().fontFamily,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          Spacer(),
                          Text("Ver todas",
                              style: TextStyle(
                                  fontFamily:
                                      GoogleFonts.montserrat().fontFamily,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: model.listMatchs.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return const ItemCardTip();
                        },
                      ),
                    ),
                    Text(
                      "Principais bônus de aposta",
                      style: TextStyle(
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                   // ItemBonus()
                    SizedBox(
                      height: 168,
                      child: GridView.builder(itemCount: 4,  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 84,

                      ), itemBuilder: (context, index){
                        return ItemBonus();
                      }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Veja mais bônus disponíveis"),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                            width: 67,
                            height: 48,
                            child: RoundedButtonIcon(
                              icon: Icons.arrow_forward,
                              onPressed: () {},
                            )),
                      ],
                    ),
                    Text(
                      "Ultimas apostas ganhas            ",
                      style: TextStyle(
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 92,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: model.listWonBets.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return const ItemBetWon();
                        },
                      ),
                    ),
                    Container(margin: EdgeInsets.only(top: 32 ), height: 61, child: Expanded(child: Center(child: const Image(
                        image: AssetImage("assets/imperio-big.png"))),),),

                  ],
                ),
              ),
            ),
          );
        });
  }
}
