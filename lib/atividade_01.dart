import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const AtivUm());
}

class AtivUm extends StatelessWidget {
  const AtivUm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.orange,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 100,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.greenAccent,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.lightBlue,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.blue[800],
                    width: 100,
                    height: 100,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.purple,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.pink[800],
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.white,
                    width: 100,
                    height: 100,
                  ),
                ],
              ),

              
            ],
          ),
        ));
  }
}
