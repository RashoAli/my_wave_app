import 'package:flutter/material.dart';

class LoginRegesterPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _LoginRegesterPage();
  }
}

enum FormType { login, register }

class _LoginRegesterPage extends State<LoginRegesterPage> {
  final formKey = new GlobalKey<FormState>();
  FormType _formType = FormType.login;
  String _email = '';
  String _password = '';

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void moveToRegister() {
    formKey.currentState.reset();

    setState(() {
      _formType = FormType.register;
    });
  }

  void moveToLogin() {
    formKey.currentState.reset();

    setState(() {
      _formType = FormType.login;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('My Wave'),
      ),
      body: new Container(
        margin: EdgeInsets.all(15.0),
        child: new Form(
          key: formKey,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: creatInputs() + creatButtens(),
          ),
        ),
      ),
    );
  }

  List<Widget> creatInputs() {
    return [
      SizedBox(
        height: 10.0,
      ),
      logo(),
      SizedBox(
        height: 20.0,
      ),
      new TextFormField(
        decoration: new InputDecoration(labelText: 'Email'),
        validator: (value) {
          return value.isEmpty ? 'Email is requierd.' : null;
        },
        onSaved: (value) {
          return _email = value;
        },
      ),
      SizedBox(
        height: 10.0,
      ),
      new TextFormField(
        decoration: new InputDecoration(labelText: 'Password'),
        obscureText: true,
        validator: (value) {
          return value.isEmpty ? 'Password is requierd.' : null;
        },
        onSaved: (value) {
          return _password = value;
        },
      ),
      SizedBox(
        height: 20.0,
      ),
    ];
  }

  Widget logo() {
    return new Hero(
      tag: 'hero',
      child: new CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 110.0,
        child: Image.asset('Images/logo.jpg'),
      ),
    );
  }

  List<Widget> creatButtens() {
    if (_formType == FormType.login) {
      return [
        new RaisedButton(
          child: new Text('Login', style: new TextStyle(fontSize: 20.0)),
          textColor: Colors.white,
          color: Colors.blue,
          onPressed: validateAndSave,
        ),
        new FlatButton(
          child:
              new Text('Creat Account?', style: new TextStyle(fontSize: 14.0)),
          textColor: Colors.grey,
          onPressed: moveToRegister,
        ),
      ];
    } else {
      return [
        new RaisedButton(
          child:
              new Text('Creat Account', style: new TextStyle(fontSize: 20.0)),
          textColor: Colors.white,
          color: Colors.blue,
          onPressed: validateAndSave,
        ),
        new FlatButton(
          child: new Text('go to Login', style: new TextStyle(fontSize: 14.0)),
          textColor: Colors.grey,
          onPressed: moveToLogin,
        ),
      ];
    }
  }
}
