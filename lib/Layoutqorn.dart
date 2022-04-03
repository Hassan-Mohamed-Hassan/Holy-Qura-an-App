
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quron/cubit/cubit.dart';
import 'package:quron/cubit/states.dart';

class layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<cubit,states>(
      listener: (context,state){},
      builder: (context,state){
        cubit cub=cubit.getcubt(context);
        return Scaffold(
          backgroundColor: Colors. white,
          appBar:
             AppBar(title: Text('${cub.title[cub.curentIndex]}',),backgroundColor: Colors.lightBlueAccent,

          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon:new Image.asset('images/qorn.jpg',height: 30,),label: 'المصحف'),
              BottomNavigationBarItem(icon:new Image.asset('images/tspah-w5f.jpg',height: 30),label: 'السبحة'),
              BottomNavigationBarItem(icon:new Image.asset('images/askr.jpg',height: 30),label: 'اذكار مسلم'),
            ],
            backgroundColor: Colors.white,
            elevation: 0,
            onTap: (index){
              cub.chandnavbar(index);
            },
            currentIndex:cub.curentIndex ,
          ),
          body: cub.screnn[cub.curentIndex],

        );
      },
      );
  }
}
