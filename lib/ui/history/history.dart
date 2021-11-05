import 'package:flutter/material.dart';

// ignore: camel_case_types
class HistoryPage extends StatelessWidget {
  List<List<int>> list4 = [
    [11, 12, 13],
    [21, 22, 23],
    [31, 32, 33]
  ];
  var list = [
    ['2021年6月10日', '場所', '入力者', 20041],
    ['2021年6月14日', '場所', '入力者', 2004],
    ['2021年6月13日', '場所', '入力者', 20043],
    ['2021年6月12日', '場所', '入力者', 200],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Input Page'),
            leading: IconButton(
                onPressed: () {
                  // （1） 指定した画面に遷移する
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  // （1） 指定した画面に遷移する
                  Navigator.pushNamed(context, '/test');
                },
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
                child: const Text('履歴'),
              ),
            ]
            // タイト
            ),
        // body: const InputPage()),
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          if (index >= list4.length) {
            list4.addAll([
              [21, 22, 23],
              [21, 22, 23],
              [21, 22, 23],
            ]);
          }
          return _messageItem(list4[index]);
        }));
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Input Page'),
          leading: IconButton(
              onPressed: () {
                // （1） 指定した画面に遷移する
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // （1） 指定した画面に遷移する
                Navigator.pushNamed(context, '/test');
              },
              style: TextButton.styleFrom(
                primary: Colors.black,
              ),
              child: const Text('履歴'),
            ),
          ]),
      // body: const InputPage()),
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Name',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Age',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Role',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Sarah')),
              DataCell(Text('19')),
              DataCell(Text('Student')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Janine')),
              DataCell(Text('43')),
              DataCell(Text('Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _messageItem(List<int> title) {
  return Container(
    decoration: new BoxDecoration(
        border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))),
    child: ListTile(
      title: Text(
        "$title[0]",
        style: TextStyle(color: Colors.black, fontSize: 18.0),
      ),
      onTap: () {
        print('onTap called');
      },
      onLongPress: () {
        print('onLongTap called');
      },
    ),
  );
}
