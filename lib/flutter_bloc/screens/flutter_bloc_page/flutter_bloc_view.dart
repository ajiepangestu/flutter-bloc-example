import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/flutter_bloc/bloc/color_bloc.dart';

class FlutterBlocView extends StatefulWidget {
  @override
  _FlutterBlocViewState createState() => _FlutterBlocViewState();
}

class _FlutterBlocViewState extends State<FlutterBlocView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ColorBloc, ColorState>(
        builder: (context, state) {
          return Container(
            color: state.color,
            child: Center(
              child: Text(
                state.text,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () => context.read<ColorBloc>().add(
                    ToAmber(),
                  ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
              ),
            ),
            SizedBox(width: 20),
            FloatingActionButton(
              onPressed: () => context.read<ColorBloc>().add(ToLightBlue()),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
              ),
            ),
            SizedBox(width: 20),
            FloatingActionButton(
              onPressed: () => context.read<ColorBloc>().add(ToRed()),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
