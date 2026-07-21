import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:fitness_app_ui/features/home/presentation/view/widgets/app_bar_title.dart';
import 'package:fitness_app_ui/features/home/presentation/view/widgets/daily_challenge_card.dart';
import 'package:fitness_app_ui/features/home/presentation/view/widgets/weekly_list_component.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DT.bg,
      appBar: AppBar(
        backgroundColor: DT.bg,
        toolbarHeight: 100,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: AppBarTitle(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(DT.s5),
        child: Column(
          children: [
            DailyChallengeCard(),
            SizedBox(height: DT.s6),
            WeeklyListComponent(
              selectedDate: selectedDate,
              onDateSelected: (date) => setState(() {
                selectedDate = date;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
