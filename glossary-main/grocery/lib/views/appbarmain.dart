import 'package:flutter/material.dart';

AppBar AppBarMain(){
  return AppBar(
    backgroundColor: Colors.white,
    leading: Icon(Icons.widgets_outlined,color: Colors.green,size: 30,),
    elevation: 1,
    title: Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Deliver to",style: TextStyle(fontSize: 18.0,color: Colors.black,),),
        Text("Dhaka, Bangladesh",style: TextStyle(fontSize: 12.0,color: Colors.black,),),
      ],
    ),
    actions: [
      Center(
        child: Stack(
          children: [
            Icon(Icons.card_travel,size: 30,color: Colors.black,),
            Positioned(
                right: 0,
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.green,
                  child: Center(child: Text('0',style: TextStyle(fontSize: 11,color: Colors.white),)),
                ))
          ],
        ),
      ),
      IconButton(icon: Icon(Icons.search,size: 30,color: Colors.black,), onPressed: (){}),
    ],
  );
}