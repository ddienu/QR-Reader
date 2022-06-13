import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';


class ScanTiles extends StatelessWidget {
  const ScanTiles({Key? key, required this.tipo}) : super(key: key);

  final String tipo;
  

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    
    final scans = scanListProvider.scans;

    return ListView.builder(
      itemBuilder: (_ , i) => Dismissible(
        key: UniqueKey(),
        background: Container(
          color: Colors.tealAccent,          
        ),
        onDismissed: (DismissDirection direction){Provider.of<ScanListProvider>(context, listen: false)
                                                .borrarScanPorId(scans[i].id);
                                                },
        child: ListTile(
          leading: Icon(
            this.tipo == 'http'
            ?Icons.compass_calibration_rounded 
            :Icons.map_outlined,
            color: Colors.teal
            ),
          title: Text( scans[i].valor),
          subtitle: Text(scans[i].id.toString()),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () => print('Abrir algo...'),
        ),
      ),
      itemCount: scans.length,
      );
  }
}