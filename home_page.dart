import 'package:flutter/material.dart';
import 'package:habit_builder/ui/auth/reset_password_page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/ui/components/custom_scaffold.dart';
import 'package:habit_builder/ui/home/half_cliper.dart';
import 'package:habit_builder/utils/labels.dart';
import 'package:intl/intl.dart';
import '../components/home_bg.dart';
import 'package:habit_builder/utils/formats.dart';
import '../components/status_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final scheme = theme.colorScheme;
    return CustomScaffold(
      title: Labels.homepage,
      leading: CircleButton(
        child: Icon(
          Icons.menu,
        ),
      ),
      traling: CircleAvatar(
        radius: 22,
        backgroundImage: AssetImage('assets/images/profile.png'),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const HomeBg(),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: AspectRatio(
                  aspectRatio: 5 / 2,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/mask.png'),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Labels.weFirstMake,
                            style: style.titleMedium!.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            Labels.anonymous,
                            style: style.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: 50,
                            child: Center(
                              child: Text(
                                Labels.habits.toUpperCase(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 74,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "Read A Book",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 14),
                              child: Row(
                                children: List.generate(7, (index) {
                                  return DateTime.now().add(Duration(
                                      days: index - DateTime.now().weekday));
                                })
                                    .map(
                                      (e) => Padding(
                                        padding:
                                            const EdgeInsets.only(right: 6),
                                        child: Card(
                                          color: Colors.white,
                                          child: SizedBox(
                                            height: 50,
                                            width: 50,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  e.labelDay,
                                                  style:
                                                      style.bodySmall!.copyWith(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                Text(
                                                  "${e.day}",
                                                  style: style.titleMedium,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              height: 74,
                              padding: const EdgeInsets.only(left: 16),
                              child: Row(
                                children: List.generate(
                                  7,
                                  (index) => StatusButton()
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
