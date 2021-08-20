import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/flutter_bloc/screens/flutter_bloc_page.dart';

class FlutterBlocApp extends MaterialApp {
  FlutterBlocApp({Key? key})
      : super(
          key: key,
          debugShowCheckedModeBanner: false,
          home: FlutterBlocPage(),
        );
}
