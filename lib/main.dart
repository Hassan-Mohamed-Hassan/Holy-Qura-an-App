import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quron/Layoutqorn.dart';
import 'package:quron/cubit/cubit.dart';
import 'package:quron/quron.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context)=>cubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'hassan',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          appBarTheme: AppBarTheme(
            titleSpacing: 20.0,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.lightBlueAccent,
              statusBarIconBrightness: Brightness.light,
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
        ),
          home: layout(),
      ),
    );
  }
}
