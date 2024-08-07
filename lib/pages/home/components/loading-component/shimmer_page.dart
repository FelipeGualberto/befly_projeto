import 'package:beflyprojeto/components/models/championship.dart';
import 'package:beflyprojeto/pages/home/components/widgets/item_championship.dart';
import 'package:beflyprojeto/ui/colors.dart';
import 'package:beflyprojeto/ui/responsive.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

class ShimmerPage extends StatefulWidget {
  const ShimmerPage({key}) : super(key: key);

  @override
  State<ShimmerPage> createState() => _ShimmerPageState();
}

class _ShimmerPageState extends State<ShimmerPage> {
  Color baseColor = kPrimaryLightColor.withOpacity(0.1);
  Color highlightColor = const Color(0xFFF5F5F5);

  @override
  Widget build(BuildContext context) {
    Card cardWidgetChampionship = Card(
      child: SizedBox(
        width: 80,
        height: 80,
      ),
    );

    Card cardSizedBoxSport =  Card(
      child: SizedBox(
        width: 80,
        height: 10,
      ),
    );

    List<Widget> listCardChampionship = [];
    for (int i = 0; i < 17; i++){
      listCardChampionship.add(cardWidgetChampionship);
    }

    List<Widget> listSizeWidgetTab = [];
    for (int i = 0; i < 4; i++){
      listSizeWidgetTab.add(cardSizedBoxSport);
    }

    return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        Shimmer.fromColors(
          baseColor: baseColor,
          highlightColor: highlightColor,
          child: Container(

            child:  Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: listSizeWidgetTab

            ),
          ),
        ),
        Shimmer.fromColors(
          baseColor: baseColor,
          highlightColor: highlightColor,
          child: const Row(children: [
            Card(
              child: SizedBox(
                width: 374,
                height: 166,
              ),
            ),
            Card(
              child: SizedBox(
                width: 374,
                height: 166,
              ),
            ),
            Card(
              child: SizedBox(
                width: 374,
                height: 166,
              ),
            ),
            Card(
              child: SizedBox(
                width: 360,
                height: 166,
              ),
            ),

          ],)
        ),

        Shimmer.fromColors(
            baseColor: baseColor,
            highlightColor: highlightColor,
            child:  Row(children: listCardChampionship
            ,)
        ),

        _cards(baseColor, highlightColor, context),
        _cards(baseColor, highlightColor, context),
        _cards(baseColor, highlightColor, context),
        _cards(baseColor, highlightColor, context),

      ],
    ),
  );
  }
}

Widget _cards(Color baseColor, Color highlightColor, BuildContext context) => Column(
  children: [

    Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isMobile(context)? 1 : 5,
          ),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return const Card();
          }),
    ),
  ],
);