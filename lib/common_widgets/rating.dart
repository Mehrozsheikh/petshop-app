import 'package:flutter/material.dart';

class StarDisplay extends StatelessWidget {
  final int value;
  // ignore: use_key_in_widget_constructors
  const StarDisplay({this.value = 0});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
        );
      }),
    );
  }
}
