import 'package:flutter/material.dart';
import 'package:hive_db/main.dart';

class HiveScreen extends StatelessWidget {
  const HiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hive'),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            box.put('jithu', '12345');

            print(box.get('jithu'));
          },
          child: Text('click me'),
        ),
      ),
    );
  }
}
