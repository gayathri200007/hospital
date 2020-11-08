import 'package:flutter/material.dart';
import 'package:hospital/screens/pat/pat_home.dart';

class pat_Login extends StatefulWidget {
  @override
  _pat_LoginState createState() => _pat_LoginState();
}

class _pat_LoginState extends State<pat_Login> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(10.0,50.0,0.0,0.0),
                        child: Text(
                            'Welcome',
                            style: TextStyle(
                                fontSize: 80.0, fontWeight: FontWeight.bold)
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.fromLTRB(340.0,55.0,0.0,0.0),
                        child: Text(
                            '!',
                            style: TextStyle(
                                fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent)
                        ),
                      )
                    ]
                )
            ),
            Container(
              padding: EdgeInsets.only(top: 25.0,left: 20.0,right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'NAME',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black87
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.greenAccent)
                        )
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'AGE',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black87
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.greenAccent)
                        )
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'GENDER',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black87
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.greenAccent)
                        )
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'MOBILE NO',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black87
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.greenAccent)
                        )
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'DEPARTMENT',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black87
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.greenAccent)
                        )
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 35.0),
                  Container(
                    height: 45.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.blueAccent,
                      color: Colors.blue,
                      elevation: 7.0,
                      child:InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>pathome()),);
                        },
                        child: Center(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40.0),
          ],
        )
    );
  }
}

