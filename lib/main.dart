
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
            Container(
              margin: EdgeInsets.all(5),
              child: FloatingActionButton(
                
                onPressed: (){
                  setState(() {
                    if(clicks > 0){
                        clicks -= 1;
                    }
                   
                  });
                },
                child: Icon(Icons.remove),
                
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                    clicks += 1;
                  });
                },
                child: Icon(Icons.add),
                
              ),
            ),
          ],
        ),
       
    );  
  }
}