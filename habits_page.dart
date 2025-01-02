import 'package:flutter/material.dart';
import 'package:habit_builder/ui/components/custom_scaffold.dart';
import 'package:habit_builder/ui/components/app_back_button.dart';
import 'package:habit_builder/utils/labels.dart';

class HabbitPage extends StatelessWidget {
  const HabbitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: Labels.readABook, 
      leading: AppBackButton(),
    );
  }
}
