import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejercicio 02 de Layout'),
          actions: [
            IconButton(onPressed: null, icon: Icon(Icons.person_2_outlined))
          ],
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('Pastel de fresa')),
                    Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('Ingredientes y forma de elaboración')),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.person_2_outlined),
                          Icon(Icons.person_2_outlined),
                          Icon(Icons.person_2_outlined),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Image(
                        image: AssetImage('assets/images/fondo00.jpg'),
                        //width: 200,
                        //height: 200,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
