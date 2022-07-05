import 'package:flutter/material.dart';

void main() {
  runApp(const Rainbow());
}

List cor = [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.blue, Colors.deepPurple, Colors.purple.shade800,];

List<String> nomeCor = ['VERMELHO', 'LARANJA', 'AMARELO', 'VERDE', 'AZUL', 'ANIL', 'VIOLETA',];

class Rainbow extends StatelessWidget {
  const Rainbow({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.pink.shade400,
              title: const Text('VLAVAAV Horizontal',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  )),
            ),
            body: 
              Row(children: [
              ListView.builder(
                  itemCount: 100,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('$nomeCor'),
                      

                    );
                  })
            ])));
  }
}
