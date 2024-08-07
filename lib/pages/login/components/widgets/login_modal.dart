import 'package:beflyprojeto/components/widgets/rounded_button.dart';
import 'package:beflyprojeto/components/widgets/topo.dart';
import 'package:beflyprojeto/pages/login/login_viewmodel.dart';
import 'package:beflyprojeto/ui/colors.dart';
import 'package:beflyprojeto/ui/styles.dart';
import 'package:flutter/material.dart';

class LoginModal extends StatelessWidget {
  LoginViewModel model;
   LoginModal({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
              child: RoundedButton(
                  width: 298,
                  height: 56,
                  radius: 24,
                  text: "Entrar com google",
                  pathImage: "assets/android.png",
                  color: Color(0xFFE6E6E6),
                  textColor: Colors.black,
                  textStyle: ktextStyleOutfit12,
                  onPressed: model.signGoogle)),
          const SizedBox(height: 16),
          Center(
              child: RoundedButton(
                  width: 298,
                  height: 56,
                  radius: 24,
                  text: "Entrar com apple",
                  pathImage: "assets/apple.png",
                  color: Color(0xFF070101),
                  textColor: Colors.white,
                  textStyle: ktextStyleOutfit12,
                  onPressed: model.signApple)),
          SizedBox(
            height: 41,
          ),
          Image(
              fit: BoxFit.fitWidth,
              height: 15,
              width: 358,
              image: AssetImage("assets/login/div.png")),
          SizedBox(
            height: 41,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RoundedButton(
                text: "Email",
                textStyle: ktextStyleOutfit12,
                borderColor: Color(0xFF17753A),
                textColor: Color(0xFF17753A),
                color: Colors.white,
                height: 56,
                width: 120,
                onPressed: model.signEmail,
              ),
              SizedBox(
                width: 11,
              ),
              RoundedButton(
                text: "Telefone",
                textStyle: ktextStyleOutfit12,
                textColor: Colors.black,
                height: 56,
                width: 120,
                onPressed: model.signTelefone,
              ),
            ],
          )
        ],
      ),
    );
  }
}
