import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quron/askr.dart';
import 'package:quron/cubit/states.dart';
import 'package:quron/quron.dart';
import 'package:quron/spah.dart';

class cubit extends Cubit<states>{
  cubit():super(intialState());
  static getcubt(context)=>BlocProvider.of<cubit>(context);
  int curentIndex=0;
  List<Widget>screnn=[
    quronlayout(),
    SpahScrenn(),
    AskrScreen()
  ];
  List<String>title=[
    'المصحف',
    'السبحة',
    'اذكار',
  ];

  void chandnavbar(index){
    curentIndex=index;
    emit(navbarstate());
  }
  int count1=0;
  void pluscount1(){
    count1++;
    emit(plusstate());

  }
  void zerocount(){
    count1=0;
    emit(plusstate2());

  }
}