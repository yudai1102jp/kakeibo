import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class DecideButton extends StatefulWidget {
  @override
  _DecideButtonState createState() => _DecideButtonState();
}

class _DecideButtonState extends State<DecideButton> {
  int _count = 0;
  void _handlePressed() {
    setState(() {
      _count += 1;
    });

    // （1） 指定した画面に遷移する
    Navigator.pushNamed(context, '/h');
  }

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text(
              "$_count",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 200,
              height: 20,
              child: ElevatedButton(
                child: const Text(
                  '更新',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.black,
                  shape: const StadiumBorder(),
                ),
                onPressed: _handlePressed,
              ),
            )
          ],
        ));
  }
}
