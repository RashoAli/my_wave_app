import 'package:flutter/material.dart';
import 'Cards.dart';


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
  String inputCard ;
  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Add Card Suggestion'),
            content: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(hintText: "TextField in Dialog"),
              onChanged: (value) {
                inputCard = value;
              }
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('Add'),
                onPressed: () {
                  print(inputCard);
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