import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_home_page_sample/home.dart';
import 'package:new_home_page_sample/login.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToLoginScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child:
      Center(
        child: Image.asset('assets/netflixx.png',),
      ),
    );
  }


  ////////////////Navigate to Login Screen after 3 seconds........
  void navigateToLoginScreen(BuildContext context)
  {
    Future.delayed(Duration (seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(username: '',) ));
    });
  }
}

