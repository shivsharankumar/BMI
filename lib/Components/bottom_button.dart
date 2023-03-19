import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constant.dart';
class BottomButton extends StatelessWidget {
  // const BottomButton({
  //   super.key,
  // });
  BottomButton({required this.onTap, required this.buttonTitle});
  final VoidCallback onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        child: Center(child: Text(buttonTitle,style: kLargeButtonTextStyle,)),
        color:kBottomContainercolor,
        margin: EdgeInsets.only(top:10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerCode,

      ),
    );
  }
}