import 'package:flutter/material.dart';

class DataTableExample extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'title': 'Tugas 1',
      'start_date': '2023-06-01',
      'end_date': '2023-06-05',
    },
    {
      'title': 'Tugas 2',
      'start_date': '2023-06-03',
      'end_date': '2023-06-08',
    },
    {
      'title': 'Tugas 3',
      'start_date': '2023-06-06',
      'end_date': '2023-06-12',
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Table Example'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Title')),
            DataColumn(label: Text('Start Date')),
            DataColumn(label: Text('End Date')),
          ],
          rows: List<DataRow>.generate(
            data.length,
            (index) => DataRow(
              cells: [
                DataCell(Text(data[index]['title'])),
                DataCell(Text(data[index]['start_date'])),
                DataCell(Text(data[index]['end_date'])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
