import 'dart:convert';

import 'package:beflyprojeto/components/api/bets_api.dart';
import 'package:beflyprojeto/components/api/bonus_api.dart';
import 'package:beflyprojeto/components/api/championship_api.dart';
import 'package:beflyprojeto/components/api/match_api.dart';
import 'package:beflyprojeto/components/api/sports_api.dart';
import 'package:beflyprojeto/components/api/tips_api.dart';
import 'package:beflyprojeto/components/models/bonus.dart';
import 'package:beflyprojeto/components/models/championship.dart';
import 'package:beflyprojeto/components/models/match.dart';
import 'package:beflyprojeto/components/models/sport.dart';
import 'package:beflyprojeto/components/models/tip.dart';
import 'package:beflyprojeto/components/models/won_bet.dart';
import 'package:beflyprojeto/home/components/widgets/item_filter.dart';
import 'package:beflyprojeto/home/components/widgets/item_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  BuildContext viewContext;
  List<Sport> listSports = [];
  List<Championship> listChampionships = [];
  List<MatchModel> listMatchs = [];
  List<Tip> listTips = [];
  List<Bonus> listBonus = [];
  List<WonBet> listWonBets = [];
  List<Widget> tabList = [
    ItemTab(name:"Todos", imagePath: "assets/apito.png",),
    ItemTab(name:"Futebol", imagePath: "assets/bola.png",),
    ItemTab(name:"Basquete", imagePath: "assets/bola_basquete.png",),
    ItemTab(name:"E-sports", imagePath: "assets/controle.png",)];
    List<ItemFilter> filterList = [
    ItemFilter( title: "Live", isLive: true,isSelected: true,),ItemFilter(title: "Hoje",), ItemFilter(title: "01/11")];
  List<bool> isSelected = [false,false,false];

  TabController? tabControler;


  HomeViewModel(this.viewContext){
    queryApi();
  }

  Future<void> queryApi() async {
     listSports = await SportsAPI().get();
     listChampionships = await ChampionshipAPI().get();
     listMatchs = await MatchAPI().get();
     listTips = await TipsAPI().get();
     listBonus = await BonusAPI().get();
     listWonBets = await BetsAPI().get();
     notifyListeners();
  }

}