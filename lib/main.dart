import 'package:flutter/material.dart';

import './hal_komputer.dart' as komputer;
import './hal_radio.dart' as radio;
import './hal_headset.dart' as headset;
import './hal_smartphone.dart' as hp;

void main(){
  runApp(
    MaterialApp(
      title: "Tab Bar",
      home: Home(),
    ),
    );    
  }

  class Home extends StatefulWidget {
    const Home({super.key});
    @override
    State<Home> createState() => _MyWidgetState();
  }

  class _MyWidgetState extends State<Home> with SingleTickerProviderStateMixin {
    late TabController controller;
    @override

  void initState() {
    controller = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Daftar Electronik'),
          bottom: TabBar(
            controller: controller,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.computer),text:"komputer",),
              Tab(icon: Icon(Icons.headset),text:"headset",),
              Tab(icon: Icon(Icons.radio),text:"radio",),
              Tab(icon: Icon(Icons.smartphone),text:"smartphone",),
            ],
          ),
        ),

      body: TabBarView(
        
        controller: controller,
        children: <Widget>[
          komputer.Komputer(),
          headset.Headset(),
          radio.Radio(),
          hp.Smartphone()
        ],
      ),

      bottomNavigationBar: new Material(
        color: Colors.amber,
        child:new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon:new Icon(Icons.computer),),
            new Tab(icon:new Icon(Icons.headset),),
            new Tab(icon:new Icon(Icons.radio),),
            new Tab(icon:new Icon(Icons.smartphone),),
          ],
        ), 
      ),
    );
  }
}