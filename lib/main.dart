
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

  void handleCount(int click){
    if(clicks + click >= 0){
      setState(() {
        clicks += click;
      });
    }
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
              icon: Icons.remove,
              pressed: () => handleCount(-1)
                
            ),
            FloatButton(

              icon: Icons.add,
              pressed: () => handleCount(1),
            ),

          ],
        ),
       
    );  
  }
}