import 'package:beflyprojeto/components/widgets/topo.dart';
import 'package:beflyprojeto/pages/login/components/widgets/login_modal.dart';
import 'package:beflyprojeto/pages/login/login_viewmodel.dart';
import 'package:beflyprojeto/ui/styles.dart';
import 'package:flutter/material.dart';

class LoginBodyDesktop extends StatelessWidget {
  LoginViewModel model;
  LoginBodyDesktop({super.key,  required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.only(left: 64, top: 32),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Topo(),
            padding: EdgeInsets.only(right: 64),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Spacer(),
              Image(
                  fit: BoxFit.fitWidth,
                  height: 568,
                  width: 739,
                  image: AssetImage("assets/login/img_login_big.png")),
              SizedBox(width: 30,),
              Column(
                children: [
                  const SizedBox(height: 68),
                  Text(
                      textAlign: TextAlign.center,
                      'Entre\n em sua conta',
                      style: ktextStyleArchivoNarrow24),
                  SizedBox(height: 8),
                  Text(
                      textAlign: TextAlign.center,
                      'Jogue e ganhe! Temos prêmios\n diários, semanais e mensais!',
                      style: ktextStyleFieldWork12),
                  SizedBox(height: 16),

                  Container(
                      height: 500,
                      child: LoginModal(
                        model: model,
                      )),
                ],
              ),
              Spacer()
            ],
          ),
        ],
      ),
    );
  }
}
