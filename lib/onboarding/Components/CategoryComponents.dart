import 'package:deliveryapp/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CategoryComponents extends StatelessWidget {
  const CategoryComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Category",
            style: Header2(Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            onChanged: (value) {},
            decoration: InputBoxDecorationDesign("Search"),
          ),
          SizedBox(
            height: 20,
          ),
         Expanded(
             child: SafeArea(
               child: GridView.builder(
                 
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     mainAxisSpacing: 10,
                     crossAxisSpacing: 10
                   ),
                   itemCount: 10,
                   itemBuilder: (context, index){
                     return GestureDetector(

                       onTap: (){

                       },

                       child: Container(
                         height: 221,
                         width: 177,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Container(
                               child: Image.asset('assets/product/Media0.png', height: 112, width: double.infinity,fit: BoxFit.fill,),
                             ),
                             Container(
                               child: Text("Vegetables", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w700)),
                               padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                             ),
                             Container(
                               child: Text("(25)", style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w400)),
                               padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                             ),
                           ],
                       
                         ),
                         decoration: BoxDecoration(
                           color: Colors.grey,
                           borderRadius: BorderRadius.circular(8),
                       
                         ),
                       
                       
                       ),
                     );
                   },),


             )
         )

        ],
      ),
    );
  }
}
