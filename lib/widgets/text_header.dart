import 'package:flutter/material.dart';
import '../core/constants.dart';

class TextHeader extends StatelessWidget {
  final String label;

  const TextHeader({
    Key key, 
    this.label
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor.withOpacity(0.2),
      padding: EdgeInsets.all(kSmallSpace),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold
        ),
      )
    );
  }
}