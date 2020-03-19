import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class PageThree extends MaterialPageRoute<Null> {
  final String content;
  final int group = 1;
  PageThree(this.content)
      : super(builder: (BuildContext context) {


    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);



    return Scaffold(
      appBar: AppBar(
        title: Text('Create new account'),
      ),
      body: RegisterUser(),
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


class RegisterUser extends StatefulWidget {

  RegisterUserState createState() => RegisterUserState();

}
class RegisterUserState extends State {

  // Boolean variable for CircularProgressIndicator.
  bool visible = false;

  // Getting value from TextField widget.
  final nameController = TextEditingController();
  final genderController = TextEditingController();
  final personalContactNumberController = TextEditingController();
  final gsmContactNumberController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final reEnterPasswordController = TextEditingController();

  Future userRegistration() async {
    // Showing CircularProgressIndicator.
    setState(() {
      visible = true;
    });
    print("Hello Moto!!");

    // Getting value from Controller
    String name = nameController.text;
    String gender = genderController.text;
    String personalContactNumber = personalContactNumberController.text;
    String gsmContactNumber = gsmContactNumberController.text;
    String address = addressController.text;
    String password = passwordController.text;
    String reEnteredPassword = reEnterPasswordController.text;

    // SERVER API URL
    var url = 'https://farmeazy.000webhostapp.com/register_users.php';

    // Store all data with Param Name.
    var data = {'full_name': name, 'gender': gender, 'personal_contact_number':personalContactNumber,
      'gsm_contact_number' : gsmContactNumber, 'address': address, 'password': password};

    print('before API call');
    // Starting Web API Call.
    var response = await http.post(url, body: json.encode(data));
    print('after API call');
    print(response.toString());
    print(response.body.toString()) ;
    print('after response.body.toString()');
    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    // If Web call Success than Hide the CircularProgressIndicator.
    if (response.statusCode == 200) {
      setState(() {
        visible = false;
      });
    }

    // Showing Alert Dialog with Response JSON Message.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(message),
          actions: <Widget>[
            FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 32.0),
                child: Center(
                  child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      return SingleChildScrollView(
                        child: Column(
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
                                      controller: nameController,
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
                                        hintText: "enter full name",
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
                                      controller : personalContactNumberController,
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
                                        hintText: "enter personal contact number",
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
                                      controller: gsmContactNumberController,
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
                                        hintText: "enter GSM contact number",
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
                                      controller: addressController,
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
                                        hintText: "enter permanent address",
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
                                      controller: passwordController,
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
                                        hintText: "enter password",
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
                                      controller: reEnterPasswordController,
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
                                        hintText: "re enter password",
                                        fillColor: Colors.blue[50],
                                      ),
                                    ),
                                  ),
                                ),

                                //Sign up button






                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),

                      RaisedButton(
                        onPressed: userRegistration,
                        color: Colors.lightGreenAccent,
                        textColor: Colors.white,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text('sign up'),

                      ),

                            Visibility(
                              visible: visible,
                              child: Container(
                                margin: EdgeInsets.only(bottom:30),
                                child: CircularProgressIndicator(),
                              ),
                            ),

                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }

}

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

