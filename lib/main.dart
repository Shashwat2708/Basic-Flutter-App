import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Idcard(),
  ));
}

class Idcard extends StatefulWidget {
  @override
  _IdcardState createState() => _IdcardState();
}

class _IdcardState extends State<Idcard> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow[900],
      ),
      appBar: AppBar(
        title: Text("ID Displayed"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 10,
        ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/download.jpg'),
                radius: 40,
              ),
            ),
            Text('NAME:',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 10),
            Text('SHASH',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 30),

            Text('LEVEL:',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 10),
            Text('$level',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 30),

            Row(
              children: [
                Icon(Icons.email_outlined,
                color: Colors.grey,),
                SizedBox(width: 10,),
                Text('me@lol.com',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


