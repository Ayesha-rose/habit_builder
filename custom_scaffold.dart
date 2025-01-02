import 'package:flutter/material.dart';
import 'package:habit_builder/ui/components/home_bg.dart';
import 'package:habit_builder/utils/labels.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    this.title,
    this.leading,
    this.traling,
    this.body,
  });

  final String? title;
  final Widget? leading;
  final Widget? traling;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final scheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: scheme.primaryContainer,
      body: Stack(
        //alignment: Alignment.bottomCenter,
        children: [
          HomeBg(),
          if (body != null) body!,
        ],
      ),
      appBar: AppBar(
        foregroundColor: scheme.secondary,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: title != null ? Text(title!) : null,
        leadingWidth: kToolbarHeight + 20,
        leading: leading != null
            ? Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Center(child: leading),
              )
            : null,
        actions: [
          traling ?? const SizedBox(),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
