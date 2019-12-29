import 'package:flutter/material.dart';

class AddPopUp extends StatefulWidget {
  @override
  _AddPopUpState createState() => new _AddPopUpState();
}

class _AddPopUpState extends State<AddPopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Suggestion',
        child: const Icon(Icons.add),
        onPressed: () => PopUPDialog(),
      ),
    );
  }
}

class PopUPDialog extends StatelessWidget {
  TextEditingController _textFieldController = TextEditingController();

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('TextField in Dialog'),
            content: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(hintText: "TextField in Dialog"),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('CANCEL'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Suggestion',
        child: const Icon(Icons.add),
          onPressed: () => _displayDialog(context),
      ),
    );
  }
}