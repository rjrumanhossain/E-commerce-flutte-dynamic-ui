import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const Whitec = Color.fromRGBO(246, 245, 245, 1);
const PrimaryColors = Color.fromRGBO(45, 12, 87, 1);
const GreenColors = Color.fromRGBO(11, 206, 131, 1);

SvgPicture BackgroundImage(){
  return SvgPicture.asset(
    "assets/images/background.svg",
    width: double.infinity,
    height: double.infinity,
    fit: BoxFit.fill,
  );
}



TextStyle Header2(colors){
  return TextStyle(
    color: colors,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
}

TextStyle Header6(colors){
  return TextStyle(
    color: colors,
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
}

ButtonStyle ButtonStyleForm(){
  return ElevatedButton.styleFrom(
      elevation: 1,
      backgroundColor: GreenColors,
      alignment: Alignment.center,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7)
    )
  );
}
Ink buttonText(text) {
  return Ink(
    child: Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 17),
    ),
    padding: EdgeInsets.only(top: 9, bottom: 9, left: 108),
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(
      color: GreenColors,
      borderRadius: BorderRadius.circular(7),
    ),


  );
}


InputDecoration InputBoxDecorationDesign(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(10, 2, 10, 2),
    label: Text(label),
    border: OutlineInputBorder(
      borderSide: BorderSide(
          color: Colors.grey,
          width: 2
      ),

      borderRadius: BorderRadius.circular(50),

    

    ),

    prefixIcon: Padding(
      padding: EdgeInsets.all(0.0),
      child: Icon(
        Icons.search,
        color: Colors.grey,
      ), // icon is 48px widget.
    ),

  );
}
