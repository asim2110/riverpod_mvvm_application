import 'package:flutter/material.dart';
import 'package:riverpod_mvvm_application/views/user_state_screen.dart';
import 'package:riverpod_mvvm_application/views/user_stream_screen.dart';

import 'user_form_screen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserFormScreen()));
              },
              child: Text('User Form'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserStateScreen()));
              },
              child: Text('User State'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserStreamScreen()));
              },
              child: Text('User Stream'),
            ),
          ],
        ),
      ),
    );
  }
}
