import 'package:flutter/material.dart';
import 'package:projetor_flutter_application_1/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
   bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(right: 148),
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
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: const Duration(milliseconds: 1000),
          child: ListView(
            children: const [
              Task('Aprender Flutter', 'assets/logo_flutter.png', 4),
              Task('Aprender Dart', 'assets/Dart_logo.png', 5),
              Task('Gerenci. de Task', 'assets/Logo_ger_task.png', 3),
              Task('Finalizar ONE', 'assets/ONE.png', 2),
              Task('Iniciar 42', 'assets/logo_42.png', 5),
              SizedBox(height: 40,)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: const Icon(Icons.remove_red_eye),
        ),
      );
  }
}