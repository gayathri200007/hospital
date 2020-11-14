import 'package:flutter/material.dart';
import 'package:hospital/data/database-helper.dart';
import 'package:hospital/models/user1.dart';
import 'package:hospital/screens/doc/login_presenter.dart';
import 'package:hospital/screens/doc/doc_home.dart';

class LoginPage1 extends StatefulWidget {
  @override
  _LoginPage1State createState() => new _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> implements LoginPageContract1 {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _email, _password;

  LoginPagePresenter _presenter;

  _LoginPageState() {
    _presenter = new LoginPagePresenter(this);
  }

  void _register() {
    Navigator.of(context).pushNamed("/register1");
  }


  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        _presenter.doLogin(_email, _password);

      });
    }
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn = new RaisedButton(
      onPressed: _submit,
      child: new Text("Login"),
      color: Colors.green,
    );
    var registerBtn = new RaisedButton(
      padding: const EdgeInsets.all(10.0),
      onPressed: _register,
      child: new Text("Register"),
      color: Colors.green,
    );

    var loginForm = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Text(
          " Login",
          textScaleFactor: 2.0,
        ),
        new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(20.0),
                child: new TextFormField(
                  onSaved: (val) => _email = val,
                  decoration: new InputDecoration(labelText: "Name"),
                  validator: (String _email){
                    if (_email.isEmpty) return 'Enter your Name';
                    else return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(20.0),
                child: new TextFormField(
                  onSaved: (val) => _password = val,
                  decoration: new InputDecoration(labelText: "Password"),
                  validator: (String _password) {
                    if (_password.length !=8 && _password.isEmpty) return 'Password length should be 8';
                    else return null;
                  },
                ),
              )
            ],
          ),
        ),
        new Padding(
            padding: const EdgeInsets.all(10.0),
            child: loginBtn),


        registerBtn
      ],
    );

    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        title: new Text("Login Page"),
      ),
      key: scaffoldKey,
      body: new Container(
        child: new Center(
          child: loginForm,
        ),
      ),
    );
  }

  @override
  void onLoginError(String error) {
    // TODO: implement onLoginError
    _showSnackBar("Login not successful");
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void onLoginSuccess(User1 user1) async {
    // TODO: implement onLoginSuccess
    if(user1.username1 == ""){
      _showSnackBar("Login not successful");
    }else{
      _showSnackBar(user1.toString());
    }
    setState(() {
      _isLoading = false;
    });
    if(user1.flaglogged1 == "logged"){
      print("Logged");
      Navigator.of(context).pushNamed("/home1");
    }else{
      print("Not Logged");
    }
  }
}