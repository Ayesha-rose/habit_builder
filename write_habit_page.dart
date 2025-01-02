import 'package:flutter/material.dart';
import 'package:habit_builder/ui/auth/reset_password_page.dart';
import 'package:habit_builder/ui/components/app_back_button.dart';
import 'package:habit_builder/ui/components/custom_scaffold.dart';
import 'package:habit_builder/utils/labels.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:habit_builder/utils/formats.dart';
import '../components/status_button.dart';

class WriteHabitPage extends StatelessWidget {
  const WriteHabitPage({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final scheme = theme.colorScheme;
    return CustomScaffold(
      title: Labels.newHabit,
      leading: const AppBackButton(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: scheme.surface,
                        hintText: Labels.enterHabitName,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        )),
                  ),
                ),
                SizedBox(width: 12),
                Stack(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Card(
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/images/reader.svg',
                            height: 35,
                            width: 35,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Transform.translate(
                          offset: const Offset(4, -4),
                          child: CircleAvatar(
                            radius: 9,
                            backgroundColor: scheme.primary,
                            foregroundColor: scheme.surface,
                            child: Icon(
                              Icons.add_rounded,
                              size: 16,
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 8),
            Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          Labels.habitFrequency,
                          style: style.titleMedium,
                        ),
                      ),
                      CupertinoButton(
                        child: Row(
                          children: [
                            const Text(Labels.custom),
                            Icon(Icons.keyboard_arrow_right_rounded)
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Divider(height: 1),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8,10,8,16),
                    child: Row(
                        children: List.generate(7, (index) {
                      return DateTime.now()
                          .add(Duration(days: index - DateTime.now().weekday));
                    })
                            .map((e) => Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        e.labelDay,
                                        style: style.bodySmall!.copyWith(
                                          fontSize: 10,
                                        ),
                                      ),
                                      StatusButton(
                                        size: 38,
                                      )
                                    ],
                                  ),
                                ))
                            .toList()),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
