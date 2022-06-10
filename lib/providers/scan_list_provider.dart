


import 'package:flutter/material.dart';
import 'package:qr_reader/providers/db_provider.dart';

class ScanListProvider extends ChangeNotifier{

 List<ScanModel> scans = [];

 String tipoSeleccionado = "geo";


 nuevoScan( String valor) async {

  final nuevoScan = ScanModel(valor: valor, id: 1, tipo: '');

  final id = await DBProvider.db.nuevoScan(nuevoScan);

  nuevoScan.id = id;

  if ( this.tipoSeleccionado == nuevoScan.tipo){

  this.scans.add(nuevoScan);
  notifyListeners();

  }






 }
}