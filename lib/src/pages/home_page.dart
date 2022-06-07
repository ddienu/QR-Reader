import 'package:flutter/material.dart';

import 'package:qr_reader/src/Widgets/custom_navigatorbar.dart';
import 'package:qr_reader/src/Widgets/scan_button.dart';

import 'package:qr_reader/src/pages/bodyhome_page.dart';
import 'package:qr_reader/src/pages/direcciones_page.dart';
import 'package:qr_reader/src/pages/mapas_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon ( Icons.delete_forever),
            ),
        ],
      ),
      body: HomePageBody(),
           bottomNavigationBar: CustomNavigationBar(),
           floatingActionButton: ScanButton(),
           floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  
 
 }
