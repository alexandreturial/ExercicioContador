
import 'package:aula5/Components/floatButton.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: CouterScreen()
    )
  );
}


class CouterScreen extends StatefulWidget {
  

  @override
  _CouterScreenState createState() => _CouterScreenState();
}

class _CouterScreenState extends State<CouterScreen> {

  var clicks = 0;  

  void handleCount(Function countFunction){
    int counter = countFunction(clicks);
    if(counter >= 0){
      setState(() {
        clicks = counter;
      });
    }
  }

  int add(counter){
    return counter += 1;
  }
  int sub(counter){
    return counter -= 1;
  }

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
                '$clicks',
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
              pressed: () => handleCount(sub)
                
            ),
            FloatButton(

              icon: Icons.add,
              pressed: () => handleCount(add),
            ),

          ],
        ),
       
    );  
  }
}