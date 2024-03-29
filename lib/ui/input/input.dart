import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'parts/inputnum.dart';
import 'parts/switch.dart';
import 'parts/decidebutton.dart';
import '../../widget/selectlist.dart';

// ignore: camel_case_types
class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('入力画面'),
        leading: IconButton(
            onPressed: () {
              // （1） 指定した画面に遷移する
              Navigator.pushNamed(context, '/h');
            },
            icon: Icon(Icons.article_outlined)),
        actions: [
          DropDownUserList(),
        ],
      ),
      // body: const InputPage()),
      body: Container(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            // titleSection,
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ChangeForm(str: 'test2'),
                  ChangeForm(str: 'e'),
                  /*2*/
                ],
              ),
              flex: 2,
            ),
            const Expanded(
              child: InputNum(),
              flex: 2,
            ),
            Expanded(
              child: DecideButton(),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
