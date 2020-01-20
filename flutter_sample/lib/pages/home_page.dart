import 'package:flutter/material.dart';
import './bottomNavigation/bottom_navigation_widget.dart';
import './bottomAppBar/bottom_appBar_demo.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          MyListTile(title: '底部导航栏制作',onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context){
                return BottomNavigationWidget();
              })
            );
          }),
            MyListTile(title: '不规则底部工具栏制作',onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return BottomAppBarDemo();
            }));
          }),
        ],
        ),
    );
  }
}

class MyListTile extends StatelessWidget {
  
  MyListTile({Key key, this.title,this.onTap}) : super(key: key);

  final String title;
  final GestureTapCallback onTap; 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 1,color: Colors.black12))
      ),
      child:  Column(
        children: <Widget>[
          ListTile(title: Text('${this.title}'),trailing: Icon(Icons.keyboard_arrow_right) , onTap:this.onTap),
        ],
      ) 
    );
  }
}