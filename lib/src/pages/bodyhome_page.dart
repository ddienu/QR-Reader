import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:qr_reader/providers/scan_list_provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';

import 'direcciones_page.dart';
import 'mapas_page.dart';
 
 class HomePageBody extends StatelessWidget {
   
   @override
   Widget build(BuildContext context) {

     final uiProvider = Provider.of<UiProvider>(context);


    final currentIndex = uiProvider.selectedMenuOpt;


    final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);

    //DBProvider.db.getTodosLosScans().then(( print));

   switch( currentIndex ){
       case 0:  
       scanListProvider.cargarScansPorTipo('geo');
       return MapasPage();
       case 1: 
       scanListProvider.cargarScansPorTipo('http');
       return DireccionesPage();
      
       default:
       return MapasPage();
       }
     }
   }