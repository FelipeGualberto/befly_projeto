import 'dart:convert';


import 'package:beflyprojeto/components/models/bonus.dart';
import 'package:beflyprojeto/components/models/championship.dart';
import 'package:beflyprojeto/components/models/match.dart';
import 'package:beflyprojeto/components/models/sport.dart';
import 'package:beflyprojeto/components/models/tip.dart';
import 'package:beflyprojeto/components/models/won_bet.dart';
import 'package:beflyprojeto/pages/home/components/widgets/item_filter.dart';
import 'package:beflyprojeto/pages/home/components/widgets/item_tab.dart';
import 'package:beflyprojeto/pages/home/home.dart';
import 'package:beflyprojeto/services/api/bets_api.dart';
import 'package:beflyprojeto/services/api/bonus_api.dart';
import 'package:beflyprojeto/services/api/championship_api.dart';
import 'package:beflyprojeto/services/api/match_api.dart';
import 'package:beflyprojeto/services/api/sports_api.dart';
import 'package:beflyprojeto/services/api/tips_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

class LoginEmailSenhaViewModel extends BaseViewModel {
  BuildContext viewContext;
  TextEditingController textEditingController = TextEditingController();

  LoginEmailSenhaViewModel(this.viewContext);


  void onChangedPassword(String value) {
  }

  void onPressedContinue() {
    Get.offAll(Home());
  }
}