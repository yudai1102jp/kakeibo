import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('test'),
          leading: IconButton(
            onPressed: () {
              // （1） 指定した画面に遷移する
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // （1） 指定した画面に遷移する
                Navigator.pushNamed(context, '/history');
              },
              style: TextButton.styleFrom(
                primary: Colors.black,
              ),
              child: const Text('履歴'),
            ),
          ]),
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
