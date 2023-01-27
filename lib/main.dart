// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerenciado de Tarefas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 148),
            child: Text(
              'Tarefas',
              style: TextStyle(
                fontSize: 26,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Task('Aprender Flutter', 'assets/logo_flutter.png', 4),
            Task('Aprender Dart', 'assets/Dart_logo.png', 5),
            Task('Gerenci. de Task', 'assets/Logo_ger_task.png', 3),
            Task('Finalizar ONE', 'assets/ONE.png', 2),
            Task('Iniciar 42', 'assets/logo_42.jpeg', 5),
          ],
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String name;
  final String image;
  final int stars;

  const Task(this.name, this.image, this.stars, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 140,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset(
                        widget.image,
                      ),
                      width: 72,
                      height: 100,
                      color: Colors.white38,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          child: Text(
                            widget.name,
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: (widget.stars >= 1) ? Colors.blue : Colors.blueGrey[900],
                            ),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: (widget.stars >= 2) ? Colors.blue : Colors.blueGrey[900],
                            ),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: (widget.stars >= 3) ? Colors.blue : Colors.blueGrey[900],
                            ),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: (widget.stars >= 4) ? Colors.blue : Colors.blueGrey[900],
                            ),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: (widget.stars >= 5) ? Colors.blue : Colors.blueGrey[900],
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 52,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });
                          print(nivel);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [Icon(Icons.arrow_drop_up), Text('UP')],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: (widget.stars > 0) 
                        ? (nivel/widget.stars) 
                        : 1,
                      ),
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(11),
                    child: Text(
                      'Nivel: $nivel',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}