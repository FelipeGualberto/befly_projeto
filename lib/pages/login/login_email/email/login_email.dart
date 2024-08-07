import 'package:beflyprojeto/components/widgets/rounded_button.dart';
import 'package:beflyprojeto/components/widgets/rounded_input_text.dart';
import 'package:beflyprojeto/pages/login/login_email/email/login_email_viewmodel.dart';
import 'package:beflyprojeto/pages/login/login_viewmodel.dart';
import 'package:beflyprojeto/ui/responsive.dart';
import 'package:beflyprojeto/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginEmail extends StatefulWidget {
  const LoginEmail({super.key});

  @override
  State<LoginEmail> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginEmailViewModel>.reactive(
        viewModelBuilder: () => LoginEmailViewModel(context),
        builder: (context, model, child) {
          return Scaffold(
              appBar: AppBar(),
              body: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center ,
                      children: [

                      Container(width: 328, child: Text("Qual o seu e-mail?", style: ktextStyleMontserrat24, textAlign: TextAlign.left,)),
                      SizedBox(height: 32,),
                      RoundedInputText(controller: model.textEditingController, onChanged: model.onChangedTextEmail, label: "E-mail", width: 342,),
                      SizedBox(height: 32,),
                      RoundedButton(text: "Continuar", textColor: Colors.black, height: 55, width: 296, onPressed:  model.onPressedContinue)
                    ],),
                  ) ));
        });
  }
}
