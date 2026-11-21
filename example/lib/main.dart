import 'package:flutter/widgets.dart';
import 'package:low_level_widgets/low_level_widgets.dart';

void main() {
  runApp(WidgetsApp(
    color: const Color(0xfffafafa),
    builder: (context, _) => const ColoredBox(
      color: Color(0xfffafafa),
      child: DefaultTextStyle(
        style: TextStyle(color: Color(0xff202020), fontSize: 18),
        child: SafeArea(
          child: InsetColumn(
            padding: EdgeInsets.all(16),
            gap: 8,
            children: [Text('Shopping list'), Text('Milk'), Text('Tea')],
          ),
        ),
      ),
    ),
  ));
}
