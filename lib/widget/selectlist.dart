import 'package:flutter/material.dart';

class DropDownUserList extends StatefulWidget {
  @override
  _DropDownUserListState createState() => _DropDownUserListState();
}

class _DropDownUserListState extends State<DropDownUserList> {
  List<String> _dropDownMenu = ['Aki', 'Inoguchi', '編集'];

  String _selectedKey = 'Aki';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedKey,
      // icon: Icon(Icons.arrow_drop_down),
      // iconSize: 30,
      elevation: 20,
      isDense: false,

      alignment: Alignment.bottomCenter,
      style: TextStyle(
        fontSize: 22,
        color: Colors.black45,
      ),
      onChanged: (String? newValue) {
        setState(() {
          _selectedKey = newValue!;
        });
        if ('編集' == newValue) {
          Navigator.pushNamed(context, '/manage');
        }
      },
      items: _dropDownMenu.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          alignment: Alignment.center,
          child: Text(
            value,
          ),
        );
      }).toList(),
    );
  }
}
