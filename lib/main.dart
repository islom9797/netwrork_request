import 'package:flutter/material.dart';
import 'package:task_api/pages/home_page.dart';
void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes:{
        HomePage.id:(context)=>HomePage(),
      },
    );
  }
}

