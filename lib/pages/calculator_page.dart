import 'package:flutter/material.dart';
import '../controllers/calculator_controller.dart';
import '../widgets/number_input_field.dart';
import '../widgets/text_header.dart';
import '../widgets/primary_button.dart';
import 'result_dialog.dart';
import '../core/constants.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final _controller = CalculatorController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          kAppTitle,
          style: TextStyle(color: Colors.white)
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key:  _formKey,
          child: _buildForm(),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Container(
      padding: EdgeInsets.all(kSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextHeader(label: kEnvironmentHeader),
          SizedBox(height: kSpace),
          NumberInputField(
            label: '$kWidth ($kMeters)',
            onSaved: _controller.setRoomWidth,
          ),
          SizedBox(height: kSpace),
          NumberInputField(
            label: '$kLength ($kMeters)',
            onSaved: _controller.setRoomLength,
          ),
          SizedBox(height: kBigSpace),
          TextHeader(label: kFloorHeader),
          SizedBox(height: kSpace),
          NumberInputField(
            label: '$kWidth ($kMeters)',
            onSaved: _controller.setFloorWidth,
          ),
          SizedBox(height: kSpace),
          NumberInputField(
            label: '$kLength ($kMeters)',
            onSaved: _controller.setFloorLength,
          ),
          SizedBox(height: kSpace),
          NumberInputField(
            label: '$kPrice',
            onSaved: _controller.setPrice,
          ),
          _buildClearButton(),
          SizedBox(height: kBigSpace),
          PrimaryButton(
            label: kCalculate,
            onPressed: _onCalculate
          ),
        ],
      ),
    );
  }

  _onCalculate() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      final result = _controller.calculate();
      ResultDialog.show(context, result);
    }
  }

  _buildClearButton() {
    return ElevatedButton(
      child: Text(
       'LIMPAR',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: _clear,
    );
  }

  void _clear() {
    setState(() {
      _formKey.currentState.reset();
    });
  }
}
