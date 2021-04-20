import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  const PrimaryButton({
    Key key, 
    this.label, 
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      child: ElevatedButton(
        child: Text(
          label.toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
        onPressed: onPressed,
      ),
    );
  }
}