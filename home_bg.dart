import 'package:flutter/material.dart';


class HomeBg extends StatelessWidget {
  const HomeBg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, 56),
      child: Image.asset(
        'assets/images/home-bg.png',
        height: 543,
        width: 555,
      ),
    );
  }
}