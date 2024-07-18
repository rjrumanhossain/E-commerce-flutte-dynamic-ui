import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class SinglePageCategory extends StatefulWidget {
  const SinglePageCategory({super.key});

  @override
  State<SinglePageCategory> createState() => _SinglePageCategoryState();
}

class _SinglePageCategoryState extends State<SinglePageCategory> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Category", style: Header2(Colors.black),),
          SizedBox(height: 20,),
          TextFormField(
            onChanged: (value){},
            decoration: InputBoxDecorationDesign("Search"),
          ),
          SizedBox(height: 20,),
          Center(
            child: Text("Hi! I am Category"),
          )





        ],
      ),
    );
  }
}
