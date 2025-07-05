import 'package:flutter/material.dart';

class SingleAgentsScreen extends StatefulWidget{
  SingleAgentsScreen({key}) {
    key=super.key;
  }

  @override
  State<SingleAgentsScreen> createState() {
    return _SingleAgentsScreenState();
  }
}

class _SingleAgentsScreenState extends State<SingleAgentsScreen> {
  
  @override
  Widget build(BuildContext context) {
    return(
    Scaffold(
      appBar: (AppBar(
        backgroundColor: Colors.amber,
        title: Text("Agent Details"),)),
      body: Text("Agent View Single Window")));
  }
}