import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FarmEasy login UI',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final contactNumber = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "phone number",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(context, PageTwo());
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final createNewAccount = GestureDetector(
      child: Text('Create New Account',
          style: TextStyle(
              decoration: TextDecoration.underline, color: Colors.blue)),
      onTap: () {
        Navigator.push(context, PageThree("enter value"));
      },
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "images/download.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                contactNumber,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButton,
                SizedBox(
                  height: 15.0,
                ),
                createNewAccount,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PageTwo extends MaterialPageRoute<Null> {
  PageTwo()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('New Page'),
            ),
          );
        });
}

class PageThree extends MaterialPageRoute<Null> {
  final String content;
  PageThree(this.content)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Create new account'),
            ),
            body: Center(
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
                          Container(
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
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),

                      //Gender
                      Row(
                        children: <Widget>[
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
                          Row(
                            children: <Widget>[
                              Text("Male"),
                              RadioButton(),
                              SizedBox(
                                width: 40.0,
                              ),
                              Text("Female"),
                              RadioButton(),
                            ],
                          ),
                        ],
                      ),
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
                          Container(
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
                          Container(
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
                          Container(
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
                          Container(
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
                          Container(
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
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          );
        });
}

class RadioButton extends StatefulWidget {
  @override
  RadioButtonState createState() {
    return new RadioButtonState();
  }
}

class RadioButtonState extends State<RadioButton> {
  int _currValue = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Radio(
        groupValue: _currValue,
        onChanged: (int i) => setState(() => _currValue = i),
        value: 1,
      ),
    );
  }
}
