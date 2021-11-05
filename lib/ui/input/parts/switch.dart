import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class ChangeForm extends StatefulWidget {
  final String str;
  ChangeForm({required this.str});
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  bool _active = false;

  void _changeSwitch(bool e) => setState(() => _active = e);

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                widget.str,
                style: TextStyle(fontSize: 30),
              ),
            ),
            new Switch(
              value: _active,
              activeColor: Colors.orange,
              activeTrackColor: Colors.red,
              inactiveThumbColor: Colors.blue,
              inactiveTrackColor: Colors.green,
              onChanged: _changeSwitch,
            )
          ],
        ));
  }
}
