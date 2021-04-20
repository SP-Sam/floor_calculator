import 'package:flutter/material.dart';
import '../helpers/validator_helper.dart';

class NumberInputField extends StatelessWidget {
  final String label;
  final Function(String) onSaved;

  const NumberInputField({
    Key key, 
    this.label,
    this.onSaved
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: ValidatorHelper.validation,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}