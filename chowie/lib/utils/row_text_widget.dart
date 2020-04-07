import 'package:flutter/material.dart';

class TextRow extends StatelessWidget {
  final firstText;
  final secondText;
  final textStyle;
  const TextRow({this.firstText, this.secondText, this.textStyle});
      
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 15.0, top: 30.0, bottom: 15),
          width: 140,
          child: Text(
            firstText,
            style: textStyle,
            softWrap: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0, top: 30.0, bottom: 15),
          child: Text(
            secondText,
            style: textStyle,
          ),
        ),
      ],
    );
  }
}
