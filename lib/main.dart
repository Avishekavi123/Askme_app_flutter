import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            title: const Text(
                'Ask me anything'),
          ),
          body: const askme(),
        ),
    ),

  );
}
  class askme extends StatefulWidget {
    const askme({Key? key}) : super(key: key);

    @override
    State<askme> createState() => _askmeState();
  }

  class _askmeState extends State<askme> {

    int pic=1;

    @override
    Widget build(BuildContext context) {

      return Center(
        child: Row(children: [

          FlatButton(
            onPressed: () { setState(() {
                        pic=Random().nextInt(5)+1;

            }); },
            child: Expanded(
              child: Image(
                height: 320,
                width: 325,
                image: AssetImage('images/ball$pic.png'),
              ),
            ),
          ),
        ],
        ),
      );
    }
  }






