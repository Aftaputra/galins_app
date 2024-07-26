import 'package:flutter/material.dart';

class DropdownWoy extends StatefulWidget {
  @override
  _DropdownWoyState createState() => _DropdownWoyState();
}

class _DropdownWoyState extends State<DropdownWoy> {
  String dropdownValue = 'Data Terakhir';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Data Terakhir', 'Data Satu Pekan', 'Data Satu Bulan']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
