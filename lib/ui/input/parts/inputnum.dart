import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class InputNum extends StatefulWidget {
  const InputNum({Key? key}) : super(key: key);
  @override
  _Input_numState createState() => _Input_numState();
}

// ignore: camel_case_types
class _Input_numState extends State<InputNum> {
  String _text = '';
  void _handleText(String e) {
    setState(() {
      _text = e;
    });
  }

  Widget build(BuildContext context) {
    var textStyle = const TextStyle(
      color: Colors.blueAccent,
      fontSize: 30.0,
      fontWeight: FontWeight.w500,
    );
    var textField = TextField(
      enabled: true,
      maxLength: 10,
      // ignore: deprecated_member_use
      maxLengthEnforced: false,
      style: const TextStyle(color: Colors.black),
      obscureText: false,
      decoration: const InputDecoration(
        hintText: '金額を入力してください',
      ),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],

      maxLines: 1,
      onChanged: _handleText,
    );
    return Container(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: <Widget>[
            Text(
              "$_text円",
              style: textStyle,
            ),
            textField
          ],
        ));
  }
}
