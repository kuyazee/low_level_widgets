# low_level_widgets

Use `InsetColumn` to write a padded Flutter column without nesting `Padding` or adding spacers between children.

## Quick start

From your Flutter app:

```sh
flutter pub add low_level_widgets
```

```dart
import 'package:flutter/widgets.dart';
import 'package:low_level_widgets/low_level_widgets.dart';

const shoppingList = InsetColumn(
  padding: EdgeInsets.all(16),
  gap: 8,
  children: [Text('Shopping list'), Text('Milk'), Text('Tea')],
);
```

## Layout

Children line up at the start edge for the current text direction. The gap appears only between children. Use `EdgeInsetsDirectional` when the leading and trailing padding should swap in a right-to-left layout.

Like a `Column`, `InsetColumn` lays out every child and doesn't scroll. Use a `ListView.builder` for a long scrolling list.

## Platform support

Works wherever Flutter widgets run. Requires Flutter 3.24 or later and Dart 3.5 or later in the Dart 3 series.

## Contributing

Run these checks from the package directory:

```sh
flutter pub get
(cd example && flutter pub get)
dart format --output=none --set-exit-if-changed lib test example/lib
flutter analyze
flutter test
```

To see the shopping list in Chrome:

```sh
cd example
flutter run -d chrome
```

## Licence

[MIT](LICENSE)
