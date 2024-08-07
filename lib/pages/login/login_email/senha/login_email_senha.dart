import 'package:beflyprojeto/components/widgets/rounded_button.dart';
import 'package:beflyprojeto/components/widgets/rounded_input_text.dart';
import 'package:beflyprojeto/pages/login/login_email/senha/login_email_senha_viewmodel.dart';
import 'package:beflyprojeto/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginEmailSenha extends StatefulWidget {
  const LoginEmailSenha({super.key});

  @override
  State<LoginEmailSenha> createState() => _LoginEmailSenhaState();
}

class _LoginEmailSenhaState extends State<LoginEmailSenha> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginEmailSenhaViewModel>.reactive(
        viewModelBuilder: () => LoginEmailSenhaViewModel(context),
        builder: (context, model, child) {
          return Scaffold(
              appBar: AppBar(),
              body: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Container(width: 328, child: Text("Qual sua senha?", style: ktextStyleMontserrat24, textAlign: TextAlign.left,)),
                      SizedBox(height: 32,),
                      RoundedInputText(controller: model.textEditingController, onChanged: model.onChangedPassword, label: "Senha" , width: 342),
                      SizedBox(height: 32,),
                      RoundedButton(text: "Continuar", textColor: Colors.black, height: 55, width: 296, onPressed:  model.onPressedContinue)
                    ],),
                  ) ));
        });
  }
}
