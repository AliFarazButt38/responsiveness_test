import 'package:flutter/material.dart';
import 'package:responsiveness/constants.dart';
import 'package:responsiveness/util/my_box.dart';
import 'package:responsiveness/util/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context , index){
                return MyBox();
                  }
              ),
            ),
          ),
          Expanded(child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index){
            return MyTile();
          })),
        ],
      ),
    );
  }
}
