
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum BatteryIndicatorStyle { basic, sensetive }
enum BorderThickness { thin, medium , thick}

class Battery_Level_Painter extends CustomPainter {
  Color bordercolor;
  Color lowfillcolor;
  Color mediumfillcolor;
  Color highfillcolor;
  Color fullfillcolor;
  bool ChargingMod =false;
  double width;
  double height;
  int level = 0;
  BatteryIndicatorStyle style;
  double stroke ;
  BorderThickness thickness ;

  Battery_Level_Painter({double x, double y,int lvl,
    BatteryIndicatorStyle Style,
    bool chargingMod=false,
    this.bordercolor= Colors.black87,
    this.lowfillcolor=Colors.red,
    this.mediumfillcolor=Colors.yellow,
    this.highfillcolor=Colors.lightGreen,
    this.fullfillcolor=Colors.green,
    BorderThickness Thickness })
  {
    width = x;
    height = y;
    level = lvl;
    style = Style;
    bordercolor = bordercolor;
    lowfillcolor = lowfillcolor;
    mediumfillcolor = mediumfillcolor;
    highfillcolor = highfillcolor;
    fullfillcolor = fullfillcolor;
    thickness = Thickness;
    ChargingMod = chargingMod;
  }

  @override
  void paint(Canvas canvas, Size size) {

    if(ChargingMod == false){

      if(thickness == BorderThickness.thin ){
        stroke = width*0.003;

      }
      else if(thickness == BorderThickness.medium){
        stroke = width*0.005;

      }
      else if(thickness == BorderThickness.thick){
        stroke = width*0.007;

      }


      if(style == BatteryIndicatorStyle.basic) {

        if (level == 0) {

          var paintt = Paint()
            ..color = bordercolor
            ..shader
            ..strokeWidth = stroke
            ..style = PaintingStyle.stroke;


          /// en dış kontür
          canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH(0,  0, width,height ), Radius.circular(width*0.03)),
            paintt,
          );
          canvas.drawLine(Offset(width/4,0), Offset(width/4 ,height ), paintt);
          canvas.drawLine(Offset(3*width/4,0), Offset(3*width/4 ,height), paintt);
          canvas.drawLine(Offset(width/2,0), Offset(width/2 ,height  ), paintt);


          canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH( width,height*0.2 , 2,height*0.6), Radius.circular(width*0.03)),
            paintt ,
          );

        }
        else if (level == 25) {
          var paintt = Paint()
            ..color = Colors.black
            ..shader
            ..strokeWidth = stroke
            ..style = PaintingStyle.stroke;

          var paintt2 = Paint()
            ..color = Colors.red
            ..shader

            ..style = PaintingStyle.fill;
          /// % 25
          canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH(0, width*0.003 , width/4,height ), Radius.circular(width*0.03)),
            paintt2,
          );
          canvas.drawLine(Offset(width/4,0), Offset(width/4 ,height ), paintt);
          canvas.drawLine(Offset(3*width/4,0), Offset(3*width/4 ,height), paintt);
          canvas.drawLine(Offset(width/2,0), Offset(width/2 ,height  ), paintt);
          /// en dış kontür
          canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH(0,  0, width,height ), Radius.circular(width*0.03)),
            paintt,
          );
          canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH( width,height*0.2 , 2,height*0.6), Radius.circular(width*0.03)),
            paintt ,
          );

        }
        else if (level == 50) {

          var paintt = Paint()
            ..color = Colors.black
            ..shader
            ..strokeWidth = stroke
            ..style = PaintingStyle.stroke;


          var paintt3 = Paint()
            ..color = Colors.yellow
            ..shader
            ..style = PaintingStyle.fill;
          /// % 50
          canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH(0, width*0.003 , width/2, height), Radius.circular(width*0.03)),
            paintt3,
          );
          canvas.drawLine(Offset(width/4,0), Offset(width/4 ,height ), paintt);
          canvas.drawLine(Offset(3*width/4,0), Offset(3*width/4 ,height), paintt);
          canvas.drawLine(Offset(width/2,0), Offset(width/2 ,height  ), paintt);
          /// en dış kontür
          canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH(0,  0, width , height), Radius.circular(width*0.03)),
            paintt,
          );
          canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH( width,height*0.2 , 2,height*0.6), Radius.circular(width*0.03)),
            paintt ,
          );
        }
        else if (level == 75) {

          var paintt = Paint()
            ..color = Colors.black
            ..shader
            ..strokeWidth = stroke
            ..style = PaintingStyle.stroke;

          var paintt4 = Paint()
            ..color = Colors.lightGreen
            ..shader
            ..style = PaintingStyle.fill;
          /// % 75
          canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH(0, width*0.003 ,  3*width/4,height), Radius.circular(width*0.03)),
            paintt4,
          );
          canvas.drawLine(Offset(width/4,0), Offset(width/4 ,height ), paintt);
          canvas.drawLine(Offset(3*width/4,0), Offset(3*width/4 ,height), paintt);
          canvas.drawLine(Offset(width/2,0), Offset(width/2 ,height  ), paintt);
          /// en dış kontür
          canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH(0,  0,width ,height ), Radius.circular(width*0.03)),
            paintt,
          );
          canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH( width,height*0.2 , 2,height*0.6), Radius.circular(width*0.03)),
            paintt ,
          );
        }
        else if (level == 100) {

          var paintt = Paint()
            ..color = Colors.black
            ..shader
            ..strokeWidth = stroke
            ..style = PaintingStyle.stroke;

          var paintt5 = Paint()
            ..color = Colors.green
            ..shader
            ..strokeWidth = 3
            ..style = PaintingStyle.fill;

          /// % 100
          canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH(0, width*0.003 ,  width,height), Radius.circular(width*0.03)),
            paintt5,
          );
          canvas.drawLine(Offset(width/4,0), Offset(width/4 ,height ), paintt);
          canvas.drawLine(Offset(3*width/4,0), Offset(3*width/4 ,height), paintt);
          canvas.drawLine(Offset(width/2,0), Offset(width/2 ,height  ), paintt);
          /// en dış kontür
          canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH(0,  0,width ,height ), Radius.circular(width*0.03)),
            paintt,
          );
          canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH( width,height*0.2 , 2,height*0.6), Radius.circular(width*0.03)),
            paintt ,
          );
        }
        else{
          level = 0;
        }
      }

      else if(style == BatteryIndicatorStyle.sensetive){
        var paintt = Paint()
          ..color = bordercolor
          ..shader
          ..strokeWidth = stroke
          ..style = PaintingStyle.stroke;

        var Paintt = Paint()
          ..color = bordercolor
          ..shader
          ..strokeWidth = stroke
          ..style = PaintingStyle.stroke;
        var paintt2 = Paint()
          ..color = lowfillcolor
          ..shader
          ..style = PaintingStyle.fill;
        var paintt3 = Paint()
          ..color = mediumfillcolor
          ..shader
          ..style = PaintingStyle.fill;
        var paintt4 = Paint()
          ..color = highfillcolor
          ..shader
          ..style = PaintingStyle.fill;
        var paintt5 = Paint()
          ..color = fullfillcolor
          ..shader
          ..style = PaintingStyle.fill;

        if(level >= 0 && level < 25 ){
          Paintt = paintt2;
        }
        else if(level >= 25 && level < 50){
          Paintt = paintt3;
        }
        else if(level >=50 && level < 75){
          Paintt = paintt4;
        }
        else if(level >=75 && level <=100){
          Paintt = paintt5;
        }
        else if(level >100){
          Paintt = paintt5;
          level = 100;
        }
        else if(level < 0){
          Paintt = paintt;
          level = 0;
        }

        /// % set value
        canvas.drawRRect(
          RRect.fromRectAndRadius(
              Rect.fromLTWH(0,0 , width*level/100 ,height ), Radius.circular(width*0.03)),
          Paintt,
        );

        /// en dış kontür
        canvas.drawRRect(
          RRect.fromRectAndRadius(
              Rect.fromLTWH(0,  0,width, height), Radius.circular(width*0.03)),
          paintt,
        );


        canvas.drawRRect(
          RRect.fromRectAndRadius(
              Rect.fromLTWH( width,height*0.2 , 2,height*0.6), Radius.circular(width*0.03)),
          paintt ,
        );
      }
    }
    else{
      /// şarj oluyor işareti olan
    }



  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}