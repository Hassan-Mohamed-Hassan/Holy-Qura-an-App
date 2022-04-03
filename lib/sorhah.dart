import 'package:flutter/material.dart';
class imageview extends StatelessWidget {
  List<String>sorah=[];
  imageview(this.sorah);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(),
    body: PageView.builder(
    itemBuilder:(context,index){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0,vertical: 0),
      child: Image(
      image:AssetImage('images/${sorah[index]}'),
      fit: BoxFit.cover

      ),
    );
    },
    scrollDirection: Axis.vertical,
    itemCount: sorah.length,
      //pageSnapping: false,
      reverse: false,
    controller: PageController(viewportFraction: 1),
    )
    );
  }
}
