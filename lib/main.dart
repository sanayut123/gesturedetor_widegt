import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHome(),
    );
  }
}

class MyHome
 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Gesturedetor"),
      ),
      body: Container(
        color: Colors.deepPurple[300],
        child: MyScreen(),
      ),
    );
  }
}


class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}


class _MyScreenState extends State<MyScreen> {
  int number = 0;
  String stateTap = 'UP';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Container(
              child: Text(
                " Number is\n$number \n'$stateTap'",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.indigoAccent[300],
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),

            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: GestureDetector(              
                child: Container(
                  alignment: Alignment.center,
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.orange[300],
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.orange[50],
                      width: 10.0
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0))
                  ),
              ),
              onTapDown: (e){
                setState(() {
                  stateTap = "Down";
                });
                
                
              },
              onTapUp: (e){
                setState(() {
                  stateTap = "Up";            
                });                
                
              },
              onLongPress: (){
                setState(() {
                  number = number + 100;
                });
              },
              onDoubleTap: (){
                setState(() {
                  number = number - 100;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}