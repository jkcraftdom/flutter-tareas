import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BandejaPage extends StatelessWidget {
  const BandejaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> products = [
      {
        'name': 'Coca Cola',
        'descripcion': '50 ml',
        'pCompra': '2.00',
        'pVenta': '3.5'
      },
      {
        'name': 'Oreo',
        'descripcion': '50 ml',
        'pCompra': '2.00',
        'pVenta': '3'
      },
      {
        'name': 'Gloria',
        'descripcion': '50 ml',
        'pCompra': '2.00',
        'pVenta': '3'
      },
      {
        'name': 'Ariel',
        'descripcion': '50 ml',
        'pCompra': '2.00',
        'pVenta': '3'
      },
      {
        'name': 'Coca Cola',
        'descripcion': '50 ml',
        'pCompra': '2.00',
        'pVenta': '3'
      },
    ];

    return Scaffold(
      appBar: AppBar(title: Text('a')),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DataTable(
            border: TableBorder.all(color: Colors.white),
            columns: const [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Descripcion')),
              DataColumn(label: Text('P. Compra')),
              DataColumn(label: Text('P. Venta')),
            ],
            rows: products
                .map((e) => DataRow(
                      cells: [
                        DataCell(Text(e['name'])),
                        DataCell(Text(e['descripcion'])),
                        DataCell(Text('S/.' + e['pCompra'])),
                        DataCell(Text('S/.' + e['pVenta'])),
                      ],
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
