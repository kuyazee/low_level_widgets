import 'package:flutter/material.dart';
import 'package:low_level_widgets/low_level_widgets.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: InsetColumn(
            padding: EdgeInsets.all(16),
            gap: 8,
            children: [Text('Shopping list'), Text('Milk'), Text('Tea')],
          ),
        ),
      ),
    ),
  );
}
