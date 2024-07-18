import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../styles/styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
          children: [
            BackgroundImage(),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: 500,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                    color: Whitec
                  ),
                  padding: EdgeInsets.all(10),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        child: SvgPicture.asset("assets/images/splash-logo.svg"),
                        radius: 50,
                      ),
                      SizedBox(height: 10,),
                      Text("Non-Contact Deliveries",style: Header2(PrimaryColors),),
                      SizedBox(height: 10,),
                      Text("When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.",style: Header6(PrimaryColors),),
                      ElevatedButton(onPressed: (){
                        Get.toNamed('/home');
                      }, child: buttonText("order now") , style: ButtonStyleForm(),),
                      Text("Dismiss"),
                    ],
                  ),
                )
              ],
            )
          ],
      ),
    );
  }
}


