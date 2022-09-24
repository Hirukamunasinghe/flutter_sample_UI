import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_home_page_sample/login.dart';
import 'package:new_home_page_sample/newac.dart';
class Home extends StatefulWidget {
  final String username;
  const Home({Key? key, required this.username}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page',style: TextStyle(fontSize: 18),),
        centerTitle: true,
        backgroundColor: Colors.red,
        leading: Icon(Icons.movie_creation,)
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              /////////////IMAGE CONTAINER
              Container(
                padding: EdgeInsets.only(top: 5,bottom: 30),
                width:300,
                child: Image.network('https://i.pinimg.com/originals/08/68/dc/0868dcacc7c50ca2c7d35b27be81e5a9.png'),
              ),
              /////////////LOGIN BUTTON CONTAINER
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                width: 250,
                height: 100,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login() ));
                  },
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: Text('Login',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                ),
              ),
              ////////////SIGN UP BUTTON CONTAINER
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                width: 250,
                height: 100,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NewAc() ));
                  },
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: Text('Sign Up',style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                width: MediaQuery.of(context).size.width,
                child: Image.network('https://media.istockphoto.com/photos/popcorn-and-clapperboard-picture-id1191001701?k=20&m=1191001701&s=612x612&w=0&h=uDszifNzvgeY5QrPwWvocFOUCw8ugViuw-U8LCJ1wu8=',),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
