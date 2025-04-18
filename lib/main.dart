
import 'package:daily_task/dailytrackerpage.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   primarySwatch: Colors.blue,
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   primarySwatch: Colors.blue,
      // ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title:Text("🗓️ Daily Habits Tracker"), 
       shadowColor: Colors.black45,
      ),
      body: DailyTracker(),
    );
  }
}