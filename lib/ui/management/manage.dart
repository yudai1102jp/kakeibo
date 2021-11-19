import 'package:flutter/material.dart';

import '../../widget/selectlist.dart';
import './login.dart';

class ManagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('履歴'),
        leading: IconButton(
          onPressed: () {
            // （1） 指定した画面に遷移する
            Navigator.pop(context);
          },
          icon: Icon(Icons.edit),
        ),
        actions: [
          DropDownUserList(),
        ],
      ),
      // body: const InputPage()),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Listmanage(),
              ),
            ),
            Expanded(
              flex: 1,
              child: MyAuthPage(),
            ),
          ],
        ),
      ),
    );
  }
}

class Listmanage extends StatefulWidget {
  const Listmanage({Key? key}) : super(key: key);
  @override
  State<Listmanage> createState() => _Listmanage();
}

class _Listmanage extends State<Listmanage> {
  static const int numItems = 10;
  var list = [
    ['あき'],
    ['井ノ口'],
    ['テスト'],
    ['追加'],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('${list[index]}'),
        );
      },
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
