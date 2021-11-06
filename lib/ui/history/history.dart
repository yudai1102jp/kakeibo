import 'package:flutter/material.dart';

class History extends StatelessWidget {
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
          icon: Icon(Icons.edit),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              // （1） 指定した画面に遷移する
              // Navigator.pushNamed(context, '/h');
            },
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
            child: const Text('履歴'),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.more_vert),
          // ),
        ],
      ),
      // body: const InputPage()),
      body: SingleChildScrollView(
        child: History2(),
      ),
    );
  }
}

class History2 extends StatefulWidget {
  const History2({Key? key}) : super(key: key);
  @override
  State<History2> createState() => _HistoryState();
}

class _HistoryState extends State<History2> {
  static const int numItems = 10;
  var list = [
    ['2021/6/10', '桐生', '憂大', 20041, 'yudai'],
    ['2021/6/14', '場所', 'あき', 2004],
    ['2021/6/14', '場所', '入力者', 2004],
    ['2021/6/14', '場所', '入力者', 2004],
    ['2021/6/14', '場所', '入力者', 2004],
    ['2021/6/14', '場所', '入力者', 2004],
    ['2021/6/13', '場所', '入力者', 20043],
    ['2021/6/12', '場所', '入力者', 200],
    ['2021/6/12', '場所', '入力者', 200],
    ['2021/6/12', '場所', '入力者', 200],
    ['2021/6/12', '場所', '入力者', 200],
    ['2021/6/12', '場所', '入力者', 200],
    ['2021/6/12', '場所', '入力者', 200],
    ['2021/6/12', '場所', '入力者', 200],
    ['2021/6/12', '場所', '入力者', 200],
  ];

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 15,
      dataRowHeight: 30,
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            '時刻',
          ),
        ),
        DataColumn(
          label: Text(
            '場所',
          ),
        ),
        DataColumn(
          label: Text(
            '支払い者',
          ),
        ),
        DataColumn(
          label: Text(
            '金額',
          ),
        ),
      ],
      rows: List<DataRow>.generate(
        list.length,
        (int index) => DataRow(
          color: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            // All rows will have the same selected color.
            if (states.contains(MaterialState.selected)) {
              return Theme.of(context).colorScheme.primary.withOpacity(0.08);
            }
            // Even rows will have a grey color.
            if (index.isEven) {
              return Colors.grey.withOpacity(0.3);
            }
            return null; // Use default value for other states and odd rows.
          }),
          cells: <DataCell>[
            DataCell(Text('${list[index][0]}')),
            DataCell(Text('${list[index][1]}')),
            DataCell(Text('${list[index][2]}')),
            DataCell(Text('${list[index][3]}円')),
          ],
        ),
      ),
    );
  }
}

Widget _CreateList(List<int> title) {
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
