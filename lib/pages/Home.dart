import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/circle_container.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _portraitMode();
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(children: <Widget>[
            SafeArea(child: CircleContainer(child: 
              SvgPicture.asset("assets/icons/taekwondo.svg")
              )
            )
          ],)
        ],
      ),
    );
  }
}

mixin PortrairStateMixin <T extends StatefulWidget> on State<T>{
  @override
  void initState() { 
    super.initState();
    _portraitMode();
  }

  @override
  void dispose(){
    _enableRotation();
    super.dispose();
  }
}

void _portraitMode(){
  SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
}

void _enableRotation(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}