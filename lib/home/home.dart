import 'package:beflyprojeto/home/components/widgets/item_championship.dart';
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
                padding: EdgeInsets.only(left: 64, right: 64, top: 32),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image(
                        height: 36,
                        width: 143,
                        image: AssetImage("assets/imperio.png")),
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
                    ToggleButtons(
                      isSelected: model.isSelected,
                      renderBorder: false,
                      fillColor: Colors.white,
                      //borderRadius: BorderRadius.circular(20),
                      onPressed: (int index) {
                        setState(() {
                          model.isSelected[index] = !model.isSelected[index];
                        });
                      },
                      children:  <Widget>[
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Column(
                            children: const [Icon(Icons.circle), Text('Cash')],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Column(
                            children: const [Icon(Icons.circle), Text('Upi')],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Column(
                            children: const [Icon(Icons.circle), Text('Credit')],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
