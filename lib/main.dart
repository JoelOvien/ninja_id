import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(primaryColor: Colors.blue),
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        elevation: 10.0,
        title: Text('Ninja Id Card', style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),),
      ),
      body: Padding(padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(backgroundImage: AssetImage('assets/download.jpeg'),
                radius: 40.0,),
            ),
            Divider(
              height: 60.0,
              color: Colors.black,
            ),

            Text('NAME:',style: TextStyle(letterSpacing: 2.0,fontStyle: FontStyle.normal, color: Colors.grey,fontWeight: FontWeight.bold ),),
            SizedBox(height: 10.0,),

            Text(' ZAZA_MANEY',style: TextStyle(fontSize: 20.0,letterSpacing: 2.0,fontStyle: FontStyle.italic, color: Colors.white30, ),),
            SizedBox(height: 30.0,),

            Text('CURRENT NINJA LEVEL:',style: TextStyle(letterSpacing: 2.0,fontStyle: FontStyle.normal, color: Colors.grey, ),),
            SizedBox(height: 30.0,),

            Text('$ninjaLevel',style: TextStyle(letterSpacing: 2.0,color: Colors.white30,fontStyle: FontStyle.italic ),),
            SizedBox(height: 30.0,),

            Row(
              children: <Widget>[
                Icon(Icons.email, color: Colors.grey,),
                SizedBox(width: 10.0,),
                Text('zazamaney@ninjaorg.com', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white30, fontWeight: FontWeight.bold, fontSize: 19.0),)
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.white30,
      ),
    );
  }
}