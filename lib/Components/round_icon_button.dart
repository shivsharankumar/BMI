import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  // const RoundIconButton({Key? key}) : super(key: key);
  RoundIconButton({required this.icon,required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child:Icon(icon),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}