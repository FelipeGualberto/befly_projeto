import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  const Responsive({
    Key? key,
    @required this.mobile,
    @required this.tablet,
    @required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
          MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Se a largura for inferior a 1512 e superior a 1100 = Large(Desktop)
        if (constraints.maxWidth >= 1100) {
          return desktop!;
        }
        // Se a largura for inferior a 1100 e superior a 650 = Medium(Tablet)
        else if (constraints.maxWidth >= 650) {
          return tablet!;
        }
        // Se a largura for inferior a 650 = Small(Mobile)
        else {
          return mobile!;
        }
      },
    );
  }
}