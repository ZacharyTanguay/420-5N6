import 'package:flutter/material.dart';

class Yapalooza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yapalooza'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_left),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.lightGreenAccent,
        ),
        margin: const EdgeInsets.all(20.0),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,

              ),
              child: const Text(
                'L\'espace entre les boutons et le texte sont les mêmes',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Text(
              'Texte au milieu',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
              ),
              child: const Text(
                'Pipo popi',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
