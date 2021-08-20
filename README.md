# flutter-bloc-example

an Example of BLoC Implementation

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

