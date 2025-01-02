import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/ui/habits/write_habit_page.dart';
import 'package:habit_builder/ui/home/home_page.dart ';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const WriteHabitPage(),
            ),
          );
        },
        child: SvgPicture.asset(
          'assets/images/add_icon.svg',
          height: 24,
          width: 24,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/home.svg',
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/courses.svg',
                ),
              ),
              const SizedBox(width: 40),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/community.svg',
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/settings.svg',
                ),
              ),
            ],
          ),
        ),
      ),
      body: [
        const HomePage(),
      ][0],
    );
  }
}
