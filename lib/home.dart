import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page',style: TextStyle(fontSize: 18),),
        centerTitle: true,
        backgroundColor: Colors.red,
        leading: Icon(Icons.account_balance),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Center(
          child: Text('NETFLIX', style: TextStyle(color: Colors.red, fontSize: 44,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
