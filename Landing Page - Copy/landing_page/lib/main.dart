import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    title:"Page Navigation",
    home:Firstpage(),
  ));
}
class Firstpage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text("Events")),
      body: Center(
          child:ElevatedButton(onPressed:(){
            Navigator.push(context,MaterialPageRoute(
                builder:(context)=>secondpage()
            ));
          },
            child: Text('Go!!'),
          )

      ),

    );
  }
}
class secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold
      (
        appBar: AppBar(
            title:Text("Second Page ")
        ),
        body: Center(
            child:ElevatedButton(
                child:Text("Back"),
                onPressed:(){
                  Navigator.pop(context);
                }

            )
        )
    );
  }
}
