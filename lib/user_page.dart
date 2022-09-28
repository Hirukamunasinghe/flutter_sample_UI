import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_home_page_sample/home.dart';
import 'package:new_home_page_sample/login.dart';

class UserPage extends StatefulWidget {
  final String username;
  const UserPage({Key? key, required this.username}) : super(key: key);


  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<String> movies = ['Harry Potter','Underground 6', 'Spiderman','Batman', 'Split', 'Jurassic World'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies Page',style: TextStyle(color: Colors.white, fontSize: 25),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Center(
                child: Text('Welcome ${widget.username}',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: movies.length,
                separatorBuilder: (context, index){
                  return Container(color: Colors.grey, height: 1,);
                },
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red
                    ) ,
                    child: Center(
                      child: Text(movies[index],style: TextStyle(color: Colors.white,fontSize: 20),),
                    )
                  );
                }
              ),
            ),

            ////////////Log out button......
            Container(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home() ));
                },
                child: Text('Log out'),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
              ),
            )
          ],
          ),),
        );
  }
}
