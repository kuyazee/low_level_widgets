import 'package:flutter/widgets.dart';

/// A start-aligned column with outer padding and equal gaps between children.
///
/// Takes the height of its contents within the constraints from its parent.
class InsetColumn extends StatelessWidget {
  /// Creates a column with no outer padding or gaps unless specified.
  const InsetColumn({
    super.key,
    this.padding = EdgeInsets.zero,
    this.gap = 0,
    required this.children,
  }) : assert(gap >= 0 && gap < double.infinity);

  /// Space around the whole column. Directional insets follow text direction.
  final EdgeInsetsGeometry padding;

  /// Vertical distance between adjacent children, in logical pixels.
  final double gap;

  /// Widgets laid out from top to bottom.
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var i = 0; i < children.length; i++) ...[
            if (i > 0 && gap > 0) SizedBox(height: gap),
            children[i],
          ],
        ],
      ),
    );
  }
}
