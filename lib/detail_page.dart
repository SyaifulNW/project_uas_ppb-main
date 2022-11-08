import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('Back');
          },
          child: new Text('BookStore'),
        ),
      ),
    );
  }
}
