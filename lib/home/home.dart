import 'package:beflyprojeto/home/components/widgets/item_championship.dart';
import 'package:beflyprojeto/home/components/widgets/item_filter.dart';
import 'package:beflyprojeto/home/components/widgets/item_sport.dart';
import 'package:beflyprojeto/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                decoration:  BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xffF5D70A).withOpacity(0.2 ),
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
                padding: EdgeInsets.only(left: 64, right: 64, top: 32),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image(
                              height: 36,
                              width: 143,
                              image: AssetImage("assets/imperio.png")),
                        ),
                        Spacer(),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image(
                              height: 48,
                              width: 48,
                              image: AssetImage("assets/img_perfil.png")),
                        ),
                        SizedBox(width: 18),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image(
                              height: 48,
                              width: 48,
                              image: AssetImage("assets/3bar.png")),
                        ),
                      ],
                    ),
                    SizedBox(
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
                          return ItemChampionship();
                        },
                      ),
                    ),
                    SizedBox(height: 32,),
                    ToggleButtons(
                      isSelected: model.isSelected,
                      renderBorder: false,
                      fillColor: Colors.white,
                      hoverColor: Colors.white.withOpacity(0),
                      splashColor: Colors.white.withOpacity(0),
                      selectedColor: Colors.white,

                      onPressed: (int index) {
                          model.isSelected[index] = !model.isSelected[index];
                          model.filterList[index].state!.setState(() {
                            model.filterList[index].isSelected = !model.filterList[index].isSelected;
                          });
                      },
                      children: model.filterList
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
