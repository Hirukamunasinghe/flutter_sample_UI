import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_home_page_sample/home.dart';

TextEditingController _usernameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class NewAc extends StatefulWidget {
  const NewAc({Key? key}) : super(key: key);

  @override
  State<NewAc> createState() => _NewAcState();
}

class _NewAcState extends State<NewAc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up Page'),
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
                      labelStyle: TextStyle(color: Colors.white),
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
                      labelText: 'Enter a new password',
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'New Password'
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(username: '') ));
                  },
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: Text('Sign Up', style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
