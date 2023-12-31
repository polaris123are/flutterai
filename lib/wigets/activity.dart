import 'package:firstapplication/models/Activitymd.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  Activitymd activity;
   Activity({super.key,required this.activity});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
        height: 200,
        child:Column(
          children: [
            Container(
              height: 110,
              color: Colors.red,
              ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(activity.name,style: TextStyle(fontSize: 15),),
                    Text(activity.price,style: TextStyle(fontSize: 15),)
                  ],
                ),
              ),
            )
          ],
        )
        
      ),
    );
  }
}