import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constant.dart';
class CardChildWidget extends StatelessWidget {
  // const CardChildWidget({
  //   super.key,
  // });
  CardChildWidget({required this.iconz,required this.name});
  // const ReusableCard({
  //   super.key,
  // });
  final IconData iconz ;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconz,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(name,style: kLabelStyle,)
      ],
    );
  }
}