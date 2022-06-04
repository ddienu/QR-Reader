import 'package:flutter/material.dart';

import 'package:qr_reader/src/pages/Widgets/custom_navigatorbar.dart';
import 'package:qr_reader/src/pages/Widgets/scan_button.dart';

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
      body: Center(
           child: Text('Home Page'),
           ),
           bottomNavigationBar: CustomNavigationBar(),
           floatingActionButton: ScanButton(),
           floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}