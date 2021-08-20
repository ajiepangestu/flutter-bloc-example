import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/flutter_bloc/bloc/color_bloc.dart';
import 'package:flutter_bloc_example/flutter_bloc/screens/flutter_bloc_page/flutter_bloc_view.dart';

class FlutterBlocPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ColorBloc(),
      child: FlutterBlocView(),
    );
  }
}
