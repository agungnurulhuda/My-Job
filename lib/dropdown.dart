import 'package:flutter/material.dart';

class DrowdownTest extends StatefulWidget {
  const DrowdownTest({Key? key}) : super(key: key);

  @override
  State<DrowdownTest> createState() => _DrowdownTestState();
}

class _DrowdownTestState extends State<DrowdownTest> {
  List<String> items = [
    'Mantrijeron',
    'Kraton',
    'Mergangsan',
    'Umbulharjo',
    'Kotagede',
    'Gondokusuman',
    'Danurejan',
    'Pakualaman',
    'Gondomanan',
    'Ngampilan'
  ];

  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: DropdownButton<String>(
        isExpanded: true,
        iconSize: 32,
        value: value,
        items: items.map(buildMenuAgung).toList(),
        onChanged: (value) => setState(() {
          this.value = value;
        }),
      )),
    );
  }

  DropdownMenuItem<String> buildMenuAgung(String item) =>
      DropdownMenuItem(value: item, child: Text(item));
}
