


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

  cargarScans() async{

    final scans = await DBProvider.db.getTodosLosScans();
    this.scans = [...?scans];
    notifyListeners();
  }

  cargarScansPorTipo(String tipo) async {

    final scans = await DBProvider.db.getScansPorTipo(tipo);
    this.scans = [...?scans];
    tipoSeleccionado = tipo;
    notifyListeners();
  }

  borrarTodos()async{

    await DBProvider.db.deleteAllScans();
    this.scans = [];
    notifyListeners();
  }

  borrarPorId(int id) async {

    await DBProvider.db.deleteScan(id);
    cargarScansPorTipo(tipoSeleccionado);
  }






 }
}