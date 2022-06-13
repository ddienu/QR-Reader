


import 'package:flutter/material.dart';
import 'package:qr_reader/providers/db_provider.dart';

class ScanListProvider extends ChangeNotifier{

 List<ScanModel> scans = [];

 String tipoSeleccionado = "http";


 nuevoScan( String valor) async {
  

  final nuevoScan = ScanModel(valor: valor, id: 0, tipo: '');

  final id = await DBProvider.db.nuevoScan(nuevoScan);

  nuevoScan.id = id;


  if ( tipoSeleccionado == nuevoScan.tipo){

  scans.add(nuevoScan);
  notifyListeners();

  }

  Future<ScanListProvider?>cargarScans() async{

    final scans = await DBProvider.db.getTodosLosScans();
    this.scans = [...?scans];
    notifyListeners();
  }

   void cargarScansPorTipo(String tipo) async {
     final scans = await DBProvider.db.getScansPorTipo(tipo);
    this.scans = [...?scans];
    tipoSeleccionado = tipo;
    notifyListeners();
   }
   
  }

  Future<ScanListProvider?>borrarTodos()async{

    await DBProvider.db.deleteAllScans();
    scans = [];
    notifyListeners();
  }

  Future<ScanListProvider?>borrarScanPorId(int id) async {

    await DBProvider.db.deleteScan(id);
    cargarScansPorTipo(tipoSeleccionado);
  }
  
  void cargarScansPorTipo(String tipoSeleccionado) async {
    final scans = await DBProvider.db.getScansPorTipo(tipoSeleccionado);
    this.scans = [...?scans];
    tipoSeleccionado = tipoSeleccionado;
    notifyListeners();
  }






 }