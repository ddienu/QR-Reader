import 'package:flutter/material.dart';
import 'package:qr_reader/src/pages/direcciones_page.dart';
import 'package:qr_reader/src/pages/mapas_page.dart';


class HomePageBody extends StatelessWidget {
   const HomePageBody({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     
     final currentIndex = 1;

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