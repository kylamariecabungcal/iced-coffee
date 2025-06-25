import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile()
  ));
}

  class Profile extends StatelessWidget {
    const Profile({super.key});
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Coffee Journal'),
          backgroundColor: Colors.brown[400],
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'User Profile',
                  style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: Icon(Icons.person, size: 100,
                color: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 40, 15, 10),
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const [
                  Text('Name',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Kyla MArie Cabungcal',
                    style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 15, 10),
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const [
                  Text('Email',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('kylamariecabungcal@gmail.com',
                    style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 15, 10),
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const [
                  Text('Company',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Batangas State University TNEU Balayan',
                    style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 15, 10),
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const [
                  Text('Contact Number',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('09876543211',
                    style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.logout, color: Colors.black,),
                        SizedBox(width: 10),
                        Text('Logout',
                          style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic, color:Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      );
    }
  }
  

