import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget{

  final Widget child;
  
  CircleContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 200,
          height: 200,
          child: Center(
            child: this.child
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(10, 10))
              ]),
        );
  }

}