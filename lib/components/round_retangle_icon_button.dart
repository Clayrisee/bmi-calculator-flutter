import 'package:flutter/material.dart';


class RoundRetangleIconButton extends StatelessWidget {
  RoundRetangleIconButton({@required this.icon, @required this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(icon),
      elevation: 8.0,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
