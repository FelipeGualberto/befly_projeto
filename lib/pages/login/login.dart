import 'package:beflyprojeto/components/widgets/topo.dart';
import 'package:beflyprojeto/pages/login/components/widgets/login_modal.dart';
import 'package:beflyprojeto/pages/login/login_viewmodel.dart';
import 'package:beflyprojeto/ui/colors.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(context),
        builder: (context, model, child) {
          return Scaffold(
              body: SingleChildScrollView(
                  child: Container(
            padding: const EdgeInsets.only(left: 64, right: 64, top: 32),
            child: Column(
              children: [
                Topo(),
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
                    Spacer(),
                    Container(height: 500, child: LoginModal()),
                    Spacer()
                  ],
                ),
              ],
            ),
          )));
        });
  }
}
