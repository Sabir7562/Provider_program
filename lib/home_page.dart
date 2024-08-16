import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';
import 'next_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Class"),
        backgroundColor: Colors.yellow,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("${Provider.of<CounterProvider>(context).getvalue()}"),
           ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> next_page()));
           }, child: Text("Nextpage"))
          ],
        ),

      ),

    );
  }
}


