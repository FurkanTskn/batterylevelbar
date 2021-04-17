# batterylevelbar

Create different types beautiful battery indicator.

## Getting Started

To use this plugin, add 'batterylevelbar' in your pubspec.yaml file.
![alt text](https://drive.google.com/file/d/1fI2Va6t-Nbjz0ZH_3B_vwGLWaTGdfvtT/view?usp=sharing)

Set your battery style, level, shape and charging mode view specification.

 


### Example

```dart

import 'package:flutter/material.dart';
import 'package:batterylevelbar/batterylevelbar.dart';

void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: 'Battery Bar Demo',  
      theme: ThemeData(  
        primarySwatch: Colors.blue,  
      ),  
      home: BatteryBarDemo(),  
    );  
  }  
}  
  
class BatteryBarDemo extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: Center(  
        child: Container(
                width: 300,
                height: 300,
                alignment: Alignment.topLeft,
                color: Colors.transparent,
                  child: CustomPaint(
                    painter: Battery_Level_Painter(
                      x: 200,
                      y: 50,
                      lvl: 8,
                      Style: BatteryIndicatorStyle.sensetive,
                      Thickness: BorderThickness.medium ,
                      chargingMod: false,
                    ),
                  ),
                
       ),
      ),  
    );  
  }  
}  