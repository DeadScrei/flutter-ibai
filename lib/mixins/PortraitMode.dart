import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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