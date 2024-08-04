import 'package:beflyprojeto/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>  with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return  ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(context),
        builder: (context, model, child) {
         model.tabControler = TabController(length: model.tabList.length, vsync: this);
        return Scaffold(

          body: Container(
            padding: EdgeInsets.only(left: 64, right:  64, top: 32) ,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Image(height:36 , width: 143,image: AssetImage("assets/imperio.png")),
                SizedBox(height: 16,),
                SizedBox(height:50 , width: 500,child: TabBar( controller: model.tabControler, tabs: model.tabList )),
                Expanded(

                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: model.listSports.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(child: Text("teste",)
                      );
                    },
                  ),
                )

              ],
            ),
          ),

        );
      }
    );
  }
}
