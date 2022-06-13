import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/Widgets/scan_tiles.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';   


class DireccionesPage extends StatelessWidget {
  const DireccionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
   return ScanTiles(tipo: 'http');
  }
}