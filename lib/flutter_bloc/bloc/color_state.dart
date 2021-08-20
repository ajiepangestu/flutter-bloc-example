part of 'color_bloc.dart';

@immutable
abstract class ColorState {
  final Color color;
  final String text;
  const ColorState(this.color, this.text);
}

class ColorInitial extends ColorState {
  ColorInitial() : super(Colors.lightBlue, "Light Blue");
}

class ColorAmber extends ColorState {
  ColorAmber() : super(Colors.amber, "Amber");
}

class ColorLightBlue extends ColorState {
  ColorLightBlue() : super(Colors.lightBlue, "Light Blue");
}

class ColorRed extends ColorState {
  ColorRed() : super(Colors.red, "Red");
}
