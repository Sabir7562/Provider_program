import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class next_page extends StatefulWidget {
  const next_page({super.key});

  @override
  State<next_page> createState() => _next_pageState();
}

class _next_pageState extends State<next_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Page"),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(onPressed: (){
            Provider.of<CounterProvider>(context,listen: false).incremnet();
            // print(Provider.of<CounterProvider>(context).count);
            },child: Icon(Icons.add),)
          ],
        ),
      ),
    );
  }
}
