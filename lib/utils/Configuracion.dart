import 'package:flutter/material.dart';

class Configuracion{
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeigth;

  //width and heigth inicialization
  void init(BuildContext context){
    mediaQueryData = MediaQuery.of(context);
    screenWidth  = mediaQueryData!.size.width;
    screenHeigth = mediaQueryData!.size.height;
  }

  static get  widthSize{
    return screenWidth;
  }
  static get heigthSize{
    return screenHeigth;
  }
  //definir el spacing heigth
  static const  spaceSmall = SizedBox(height: 25,);
  static final  spaceMedium = SizedBox(height: screenHeigth! * 0.05,);
  static final spaceBig = SizedBox(height: screenHeigth! * 0.08,);

  //textform field border
  static const outlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );
  static const focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: Colors.greenAccent
    )
  );

  static const errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
          color: Colors.red
      )
  );

  static const primaryColor = Colors.greenAccent;
}
