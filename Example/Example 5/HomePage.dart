import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  void _logOutUser() {}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: new Container(
          //TODO dodododododododdodo
          ),
      bottomNavigationBar: new BottomAppBar(
        color: Colors.blue,
        child: new Container(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.local_car_wash),
                iconSize: 50,
                color: Colors.white,
                onPressed: _logOutUser,
              ),
              new IconButton(
                icon: new Icon(Icons.control_point),
                iconSize: 50,
                color: Colors.white,
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
