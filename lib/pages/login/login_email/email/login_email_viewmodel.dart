
import 'package:beflyprojeto/pages/login/login_email/senha/login_email_senha.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

class LoginEmailViewModel extends BaseViewModel {
  BuildContext viewContext;
  TextEditingController textEditingController = TextEditingController();

  LoginEmailViewModel(this.viewContext);


  void onChangedTextEmail(String value) {
  }

  void onPressedContinue() {
    Get.to(LoginEmailSenha());
  }
}