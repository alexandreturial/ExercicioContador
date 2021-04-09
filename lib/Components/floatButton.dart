import 'package:flutter/material.dart';


class FloatButton extends StatefulWidget {
  final IconData icon;
  final Function pressed;
  final Color colorButton;
  FloatButton({Key key, this.icon, this.pressed, this.colorButton = Colors.blue, }) : super(key: key);

  @override
  _FloatButtonState createState() => _FloatButtonState();
}

class _FloatButtonState extends State<FloatButton> {
  @override
  Widget build(BuildContext context) {
    return  Container(
              margin: EdgeInsets.all(5),
              child: FloatingActionButton(
                backgroundColor: widget.colorButton,
                onPressed: (){
                 widget.pressed();
                },
                child: Icon(widget.icon),
                
              ),
            );
  }
}