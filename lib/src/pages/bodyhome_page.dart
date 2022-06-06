import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';

import 'direcciones_page.dart';
import 'mapas_page.dart';
 
 class HomePageBody extends StatelessWidget {
   
   @override
   Widget build(BuildContext context) {

     final uiProvider = Provider.of<UiProvider>(context);


    final currentIndex = uiProvider.selectedMenuOpt;

     switch( currentIndex ){
       case 0:  
       return MapasPage();
       case 1: 
       return DireccionesPage();
      
       default:
       return MapasPage();
       }
     }
   }