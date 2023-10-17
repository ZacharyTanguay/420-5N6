import 'package:flutter/material.dart';

class Ecran1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecran 1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/screen2');
        },
        child: Icon(Icons.arrow_right),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
