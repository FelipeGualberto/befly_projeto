import 'dart:convert';

import 'package:beflyprojeto/components/api/sports_api.dart';
import 'package:beflyprojeto/components/models/sport.dart';
import 'package:beflyprojeto/home/components/widgets/item_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  BuildContext viewContext;
  List<Sport> listSports = [];
  List<Widget> tabList = [
    ItemTab(name:"Todos", imagePath: "assets/apito.png",),
    ItemTab(name:"Futebol", imagePath: "assets/bola.png",),
    ItemTab(name:"Basquete", imagePath: "assets/bola_basquete.png",),
    ItemTab(name:"E-sports", imagePath: "assets/controle.png",)];

  TabController? tabControler;
  HomeViewModel(this.viewContext){
    queryApi();
  }

  Future<void> queryApi() async {
     listSports = await SportsAPI().get();
     notifyListeners();
  }

}