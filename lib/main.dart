

import 'package:deliveryapp/onboarding/SplashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'onboarding/HomePage.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen(),),
        GetPage(name: '/home', page: ()=> HomePage())
      ],
    );
  }
}
