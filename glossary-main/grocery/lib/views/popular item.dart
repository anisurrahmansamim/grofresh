import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularItem extends StatelessWidget {
  final String image, title,descreption;
  final int price;
  const PopularItem({
    Key key,
    this.image,
    this.title,
    this.descreption,
    this.price,
  }):super (key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
        elevation: 3,
        child: Container(
        height: size.height/10,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height/10,
              width: size.width/4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey),
              ),
              child: Image.asset(image,fit: BoxFit.fill,),
            ),
            Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                Text("500ml",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),

              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("৳ $price",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Icon(Icons.add),
                  ),
                )

              ],
            ),

          ],
        ),
      ),
    ));
  }
}
