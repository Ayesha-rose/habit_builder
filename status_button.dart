import 'package:flutter/material.dart';
import '../home/half_cliper.dart';

class StatusButton extends StatelessWidget {
  const StatusButton ({super.key, this.size = 54});

  final double size;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    return Container(
      height: size,
      width: size,
      margin: const EdgeInsets.only(right: 2),
      decoration: BoxDecoration(
        color: scheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: ClipPath(
          clipper: true ? null : HalfCliper(),
          child: Container(
            height: size - 4,
            width: size - 4,
            decoration: BoxDecoration(
              color: scheme.primary,
              borderRadius: BorderRadius.circular(12),
              // border: Border.all(
              //   color: scheme.primary.withOpacity(0.1),
              //   width: 8,
              // )
            ),
          ),
        ),
      ),
    );
  }
}
