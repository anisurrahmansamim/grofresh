import 'package:flutter/material.dart';

class DailyItemView extends StatelessWidget {
  final String image, title,descreption;
  final int price;
  const DailyItemView({
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
        height: size.height/3.5,
        width: size.width/2,
        child: Column(

          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: size.height/8,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Image.asset(image),
                ),
              ),
            ),
           Expanded(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                   Text(descreption,style: TextStyle(fontSize: 12.0),),
                   SizedBox(
                     height: size.height/80,
                   ),
                   Row(
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
           )
          ],
        ),
      ),
    );
  }
}
