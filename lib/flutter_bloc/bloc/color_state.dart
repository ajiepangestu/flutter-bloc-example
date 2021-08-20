part of 'color_bloc.dart';

@immutable
abstract class ColorState {
  final Color color;
  const ColorState(this.color);
}

class ColorInitial extends ColorState {
  ColorInitial() : super(Colors.blue);
}

class ColorAmber extends ColorState {
  ColorAmber() : super(Colors.amber);
}

class ColorLightBlue extends ColorState {
  ColorLightBlue() : super(Colors.lightBlue);
}

class ColorRed extends ColorState {
  ColorRed() : super(Colors.red);
}
