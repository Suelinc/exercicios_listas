import 'package:flutter/material.dart';

void main() {
  runApp(const GradesGrids());
}

class GradesGrids extends StatelessWidget {
  const GradesGrids({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green.shade400,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.all_inclusive),
                    SizedBox(
                      width: 90.0,
                    ),
                    Icon(Icons.all_inclusive),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.view_cozy_outlined),
                    Icon(Icons.arrow_downward),
                    Icon(Icons.view_cozy_outlined),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  color: Colors.red,
                  child: GridView.count(
                      childAspectRatio: 0.6,
                      shrinkWrap: true,
                      crossAxisCount: 6,
                      padding: const EdgeInsets.all(40.0),
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      children: List.generate(
                          12,
                          (index) => Container(
                                padding: const EdgeInsets.all(10.0),
                                color: Colors.amber,
                              ))),
                )
              ],
            ),
            bottomNavigationBar: Container(
              height: 150.0,
              color: Colors.blue.shade900,
            ),
            ));
  }
}
