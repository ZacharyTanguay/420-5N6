import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebServiceScreen(),
    );
  }
}

class WebServiceScreen extends StatefulWidget {
  const WebServiceScreen({super.key});

  @override
  _WebServiceScreenState createState() => _WebServiceScreenState();
}

class _WebServiceScreenState extends State<WebServiceScreen> {
  final TextEditingController _numberController = TextEditingController();
  List<String> _representations = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web Service App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Entrez un nombre',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                fetchRepresentations();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen,
              ),
              child: const Text(
                'Va chercher les représentations',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: _representations.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_representations[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> fetchRepresentations() async {
    const String baseUrl = 'https://4n6.azurewebsites.net/exam/representations/';
    final String number = _numberController.text;

    if (number.isEmpty) {
      print('Veuillez entrer un nombre.');
      return;
    }

    try {
      Response response = await Dio().get('$baseUrl$number');
      if (response.statusCode == 200) {
        Map<String, dynamic> data = response.data;
        List<String> representations = [];

        data.forEach((key, value) {
          representations.add('$key: $value');
        });

        setState(() {
          _representations = representations;
        });
      } else {
        print('Erreur lors de la récupération des données : ${response.statusCode}');
      }
    } catch (error) {
      print('Erreur : $error');
    }
  }
}
