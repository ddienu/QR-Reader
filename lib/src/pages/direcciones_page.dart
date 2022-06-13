import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';   


class DireccionesPage extends StatelessWidget {
  const DireccionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
   final scanListProvider = Provider.of<ScanListProvider>(context);
    
    final scans = scanListProvider.scans;

    return ListView.builder(
      itemBuilder: (_ , i) => ListTile(
        leading: Icon(Icons.compass_calibration_rounded, color: Colors.teal),
        title: Text( scans[i].valor),
        subtitle: Text(scans[i].id.toString()),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => print('Abrir algo...'),
      ),
      itemCount: scans.length,
      );
  }
}