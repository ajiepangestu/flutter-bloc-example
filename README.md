# flutter-bloc-example

an Example of BLoC Implementation

## Color Bloc

```dart
class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorInitial());

  @override
  Stream<ColorState> mapEventToState(
    ColorEvent event,
  ) async* {
    yield event is ToAmber
        ? ColorAmber()
        : event is ToLightBlue
            ? ColorLightBlue()
            : event is ToRed
                ? ColorRed()
                : ColorInitial();
  }
}
```

## ColorEvent

```dart
@immutable
abstract class ColorEvent {}

class ToAmber extends ColorEvent {}

class ToLightBlue extends ColorEvent {}

class ToRed extends ColorEvent {}

```

## ColorState

```dart
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
```

## Widget Builder

```dart
BlocBuilder<ColorBloc, ColorState>(
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
)
```

## Trigger Event

```dart
onPressed: () => context.read<ColorBloc>().add(ToAmber()),
```

