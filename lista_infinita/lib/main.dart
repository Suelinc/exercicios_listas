import 'package:flutter/material.dart';

void main() {
  runApp(const ListaInfinita());
}

class ListaInfinita extends StatelessWidget {
  const ListaInfinita({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green.shade400,
              title: Text('Lista "Infinita"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.green.shade900,
                    fontSize: 28.0,
                  )),
            ),
            body: Column(
              children: [
                Expanded(child: ListView.builder(
                  itemCount: 1001,
                  itemBuilder: (context, index) {
                  return ListTile(

                    leading: const Icon(Icons.star, color: Colors.amber),
                    title: Center(child: Text('Item N°: $index', style: TextStyle(color: Colors.green.shade900, fontWeight: FontWeight.bold),)),
                  );
                }))
              ],
            )));
  }
}


