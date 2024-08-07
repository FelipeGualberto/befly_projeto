import 'package:beflyprojeto/components/widgets/topo.dart';
import 'package:beflyprojeto/pages/login/components/widgets/body/login_body_desktop.dart';
import 'package:beflyprojeto/pages/login/components/widgets/body/login_body_phone.dart';
import 'package:beflyprojeto/pages/login/components/widgets/body/login_body_tablet.dart';
import 'package:beflyprojeto/pages/login/components/widgets/login_modal.dart';
import 'package:beflyprojeto/pages/login/login_viewmodel.dart';
import 'package:beflyprojeto/ui/colors.dart';
import 'package:beflyprojeto/ui/responsive.dart';
import 'package:beflyprojeto/ui/styles.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(context),
        builder: (context, model, child) {
          return Scaffold(
              body: SingleChildScrollView(
                  child: Responsive(
            desktop: LoginBodyDesktop(model: model,),
            tablet: LoginBodyTablet(model: model,),
            mobile: LoginBodyPhone(model: model,),
          )));
        });
  }
}
