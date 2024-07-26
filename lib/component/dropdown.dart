import 'package:flutter/material.dart';


const List<String> listData = <String>['Data Terakhir', 'Data Satu Pekan', 'Data Satu Bulan'];


class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = listData.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: double.infinity,
      initialSelection: listData.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: listData.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
