import 'package:beflyprojeto/pages/login/components/widgets/login_modal.dart';
import 'package:beflyprojeto/pages/login/login_viewmodel.dart';
import 'package:beflyprojeto/ui/styles.dart';
import 'package:flutter/material.dart';

class LoginBodyTablet extends StatelessWidget {
  LoginViewModel model;
  LoginBodyTablet({super.key,  required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 64, right: 64, top: 32),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 48),
          ),
          SizedBox(
            height: 32,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: Stack(children: [
                  Image(
                      fit: BoxFit.fitWidth,
                      height: 376,
                      width: 422,
                      image:
                      AssetImage("assets/login/img_login_big.png")),
                  Positioned.fill(
                      top: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 68),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                                textAlign: TextAlign.left,
                                'Entre\nem sua conta',
                                style: ktextStyleArchivoNarrow24!
                                    .apply(color: Colors.white)),
                          ),
                          SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                                textAlign: TextAlign.left,
                                'Jogue e ganhe! Temos prêmios\ndiários, semanais e mensais!',
                                style: ktextStyleFieldWork12!
                                    .apply(color: Colors.white)),
                          ),
                          SizedBox(height: 16),
                          const SizedBox(height: 20),
                        ],
                      )),
                ]),
              ),
              Container(
                  height: 500,
                  child: LoginModal(
                    model: model,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
