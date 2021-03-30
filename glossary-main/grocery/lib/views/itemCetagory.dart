import 'package:flutter/material.dart';

class ItemCetagory extends StatelessWidget {
  final String image, title;
  final Color color1,color2;
const ItemCetagory({Key key, this.image,this.title,this.color1,this.color2}):super (key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(

      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: color1,
              child: Image.asset(image,height: 50,),
            ),
            Text(title,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}