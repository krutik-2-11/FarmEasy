import 'package:flutter/material.dart';

import 'home.dart';

class PageThree extends MaterialPageRoute<Null> {
  final String content;
  final int group = 1;
  PageThree(this.content)
      : super(builder: (BuildContext context) {


    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
    final signInButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(context, PageTwo());
        },
        child: Text("Sign In",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('Create new account'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 32.0),
        child: Center(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Column(
                children: <Widget>[
                  //Full Name
                  Row(
                    children: <Widget>[
                      Container(
                        width: 80.0,
                        child: Text(
                          "Name",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          color: Colors.blue[50],
                          child: TextField(
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue[50],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue[50],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              hintText: "$content",
                              fillColor: Colors.blue[50],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  //Gender
                  GenderRow(),

                  SizedBox(
                    height: 15.0,
                  ),

                  //Contact Number
                  Row(
                    children: <Widget>[
                      Container(
                        width: 80.0,
                        child: Text(
                          "Contact Number",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          color: Colors.blue[50],
                          child: TextField(
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue[50],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue[50],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              hintText: "$content",
                              fillColor: Colors.blue[50],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  //GSM Contact Number
                  Row(
                    children: <Widget>[
                      Container(
                        width: 80.0,
                        child: Text(
                          "GSM Contact Number",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          color: Colors.blue[50],
                          child: TextField(
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue[50],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue[50],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              hintText: "$content",
                              fillColor: Colors.blue[50],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  //Address
                  Row(
                    children: <Widget>[
                      Container(
                        width: 80.0,
                        child: Text(
                          "Permanent Address",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          color: Colors.blue[50],
                          child: TextField(
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue[50],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue[50],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              hintText: "$content",
                              fillColor: Colors.blue[50],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  //Password
                  Row(
                    children: <Widget>[
                      Container(
                        width: 80.0,
                        child: Text(
                          "Password",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          color: Colors.blue[50],
                          child: TextField(
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue[50],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue[50],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              hintText: "$content",
                              fillColor: Colors.blue[50],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  //Reenter Password
                  Row(
                    children: <Widget>[
                      Container(
                        width: 80.0,
                        child: Text(
                          "Re-enter Password",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          color: Colors.blue[50],
                          child: TextField(
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue[50],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue[50],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              hintText: "$content",
                              fillColor: Colors.blue[50],
                            ),
                          ),
                        ),
                      ),

                      //Sign up button






                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  signInButton,
                ],
              );
            },
          ),
        ),
      ),
    );
  });
}

//class RadioButton extends StatefulWidget {
//  @override
//  RadioButtonState createState() {
//    return new RadioButtonState();
//  }
//}
//
//class RadioButtonState extends State<RadioButton> {
//  int _currValue = 1;
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Radio(
//        groupValue: _currValue,
//        onChanged: (int i) => setState(() => _currValue = i),
//        value: 1,
//      ),
//    );
//  }
//}

class GenderRow extends StatefulWidget {
  @override
  _GenderRowState createState() => _GenderRowState();
}

class _GenderRowState extends State<GenderRow> {
  int group = 1;
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        width: 80.0,
        child: Text(
          "Gender",
          textAlign: TextAlign.left,
        ),
      ),
      SizedBox(
        width: 40.0,
      ),
      Text("Male"),
      Radio(
        value: 1,
        groupValue: group,
        onChanged: (T) {
          print(T);

          setState(() {
            group = T;
          });
        },
      ),
      SizedBox(
        width: 15.0,
      ),
      Text("Female"),
      Radio(
        value: 2,
        groupValue: group,
        onChanged: (T) {
          print(T);

          //T is the selected option
          setState(() {
            group = T;
          });
        },
      ),
    ]);
  }
}


