import 'package:flutter/material.dart';

class DataTableWidget extends StatelessWidget {
  final List<Map<String, String>> data = List.generate(
    12,
    (index) => {"No": (index + 1).toString(), "Konsentrasi": "0.132 A"},
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Sen, 21 Mei 2024, 12.00',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              
              columns: const [
                DataColumn(label: Text('No')),
                DataColumn(label: Text('Konsentrasi')),
              ],
              rows: data.map((item) {
                return DataRow(cells: [
                  DataCell(Text(item["No"]!)),
                  DataCell(Text(item["Konsentrasi"]!)),
                ]);
              }).toList(),
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Konsentrasi terukur : 15.1 mg/L',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
