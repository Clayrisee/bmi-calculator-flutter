import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.colour,
      this.cardChild, this.onClick}); // for make this property required, you should add @required
  /*
    Because this reusable card is immutable class, we need to add final before we declare colour property
  */

  final Color colour;
  final Widget cardChild;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
          child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: colour,
        ),
      ),
    );
  }
}