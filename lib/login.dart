import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_home_page_sample/home.dart';

TextEditingController _usernameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      border: UnderlineInputBorder(),
                      labelText: 'Enter the Username',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                      hintText: 'Username'
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,

                      border: UnderlineInputBorder(),
                      labelText: 'Enter the password',
                      labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                      hintText: 'Password'
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    loginButtonClick();
                  },
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: Text('Login', style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void loginButtonClick() {
    if (_usernameController.text == 'user123' &&
        _passwordController.text == '12345') {
      print('Login success');
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(username: _usernameController.text) ));
    } else {
      print('Login Fail');
      showAlertDialog(context);
    }
  }

  /////////////Alert dialog (wrong login credentials).......
  showAlertDialog(BuildContext context)
  {
    Widget okButton = ElevatedButton(onPressed: (){
      Navigator.pop(context);
    },
        child: Text(
            'OK'
        ));
    AlertDialog alertDialog = AlertDialog(
      title: Text('Error'),
      content: Text('Wrong username and password'),
      actions: [
        okButton
      ],
    );

    showDialog(context: context,
        builder: (BuildContext context){
          return alertDialog;
        });
  }
}
