import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quron/cubit/cubit.dart';
import 'package:quron/cubit/states.dart';

class SpahScrenn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<cubit,states>(
        builder: (context, state) {
          cubit cub=cubit.getcubt(context);
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  child: InkWell(
                    onTap: (){
                      cub.pluscount1();
                      },
                    child: CircleAvatar(backgroundColor: Colors.black,child: Text('سبحان الله',
                      style: TextStyle(fontSize: 18,),textAlign:TextAlign.center,),radius: 45,),
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(
                    top: 140,
                  ),
                  child:  CircleAvatar(
                    child: Text('${cub.count1}',style: TextStyle(color: Colors.black,fontSize: 16),),
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 40,),
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(
                    top: 130,
                    start: 250,
                  ),

                  child: InkWell(
                    onTap:(){
                      cub.pluscount1();
                    },
                    child: CircleAvatar(backgroundColor: Colors.black,child: Text('الحمد لله',
                      style: TextStyle(fontSize: 18,),textAlign:TextAlign.center,),radius: 45,),
                  ),

                ),
                Container(
                  padding: EdgeInsetsDirectional.only(
                    top: 260,

                  ),

                  child: InkWell(
                    onTap: (){cub.pluscount1();},
                    child: CircleAvatar(backgroundColor: Colors.black,child: Text('لا إله إلا الله',
                      style: TextStyle(fontSize: 18,),textAlign:TextAlign.center,),radius: 45,),
                  ),

                ),
                Container(
                  padding: EdgeInsetsDirectional.only(
                    end: 250,
                    top: 130,
                  ),

                  child: InkWell(
                    onTap: (){cub.pluscount1();},
                    child: CircleAvatar(backgroundColor: Colors.black,child: Text(' الله أكبر',
                      style: TextStyle(fontSize: 18,),textAlign:TextAlign.center,),radius: 45,),
                  ),

                ),




              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 45,
              child: MaterialButton(color: Colors.lightBlueAccent,
                  onPressed: (){
                    cub.zerocount();
                  },
                  child: Text('تصفير العداد',
                style: TextStyle(fontSize: 18,),textAlign:TextAlign.center,)
              ),

            ),
          ],
        ),
      );
    },
    listener:(context,state){}
    );
  }
}
