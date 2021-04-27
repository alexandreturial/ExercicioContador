import 'package:aula5/Page/counter_controller.dart';
import 'package:aula5/Components/floatButton.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  
  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  final controller = CounterController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Meu Contador')
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Center(
              child: Text(
                'Você apertou o botão: ',
                style: TextStyle(fontSize: 24),
              )),
            Center(
              child: Text(
                '${controller.counter()}',
                style: TextStyle(fontSize: 34),
            ))
          ],
        ),
        
        floatingActionButton: Row(
        
          mainAxisAlignment: MainAxisAlignment.end,
          
          children: [
            FloatButton(
              colorButton: Colors.red,
              icon: Icons.remove,
              pressed: (){
                setState(() {
                  controller.decrementOperation();
                });
              }
                
            ),
            FloatButton(
              icon: Icons.add,
              pressed: (){
                setState(() {
                  controller.incrementOperation();
                });
              },
            ),

          ],
        ),
    );  
  }
}