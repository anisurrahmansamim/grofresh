import 'package:flutter/material.dart';

class DailyItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(

          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/product/oil.png',height: 100,),
              Text("Food items",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

            ],
          ),
        ),
      ),
    );
  }
}