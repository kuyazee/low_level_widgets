import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:low_level_widgets/low_level_widgets.dart';

void main() {
  const item = SizedBox(width: 20, height: 10);
  Future<void> show(WidgetTester tester, List<Widget> children,
      {TextDirection direction = TextDirection.ltr}) async {
    await tester.pumpWidget(Directionality(
      textDirection: direction,
      child: Align(
        alignment: Alignment.topLeft,
        child: InsetColumn(
          padding: const EdgeInsetsDirectional.fromSTEB(5, 3, 1, 2),
          gap: 7,
          children: children,
        ),
      ),
    ));
  }

  testWidgets('places gaps between children and respects directional insets',
      (tester) async {
    for (final direction in TextDirection.values) {
      await show(tester, [item, item], direction: direction);
      final items = find.byWidget(item);
      final x = direction == TextDirection.ltr ? 5.0 : 1.0;
      expect(tester.getTopLeft(items.first), Offset(x, 3));
      expect(tester.getTopLeft(items.last), Offset(x, 20));
      expect(tester.getSize(find.byType(InsetColumn)), const Size(26, 32));
    }
  });

  testWidgets('adds no gap for an empty or single-child column',
      (tester) async {
    await show(tester, []);
    expect(tester.getSize(find.byType(InsetColumn)), const Size(6, 5));
    await show(tester, [item]);
    expect(tester.getSize(find.byType(InsetColumn)), const Size(26, 15));
  });
}
