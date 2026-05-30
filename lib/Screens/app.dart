import 'package:flutter/material.dart';

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text('BluePay'),centerTitle:true ,
          leading:IconButton(onPressed: ()=>{},
            icon:Icon(Icons.menu,size:30,color:Colors.blue),),
        ),
        body: Container(

        ),
      )
    );
  }
}