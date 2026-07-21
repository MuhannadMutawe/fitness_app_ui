import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:fitness_app_ui/features/home/presentation/view/widgets/app_bar_title.dart';
import 'package:fitness_app_ui/features/home/presentation/view/widgets/daily_challenge_card.dart';
import 'package:fitness_app_ui/features/home/presentation/view/widgets/plan_card.dart';
import 'package:fitness_app_ui/features/home/presentation/view/widgets/weekly_list_component.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              onDateSelected: (date) => setState(
                () {
                  selectedDate = date;
                },
              ),
            ),
            SizedBox(height: DT.s6),
            SizedBox(
              height: 220,
              child: Row(
                children: [
                  Expanded(
                    child: PlanCard(
                      color: DT.cardYellow,
                      difficulty: 'Medium',
                      title: 'Yoga Group',
                      date: '25 Nov.',
                      time: '14:00-15:00',
                      room: 'A5 room',
                      trainer: 'Tiffany Way',
                      trainerImage: '',
                      isLeft: true,
                      onTap: () => context.go('/session-detail'),
                    ),
                  ),
                  SizedBox(
                    width: DT.s5,
                  ),
                  Expanded(
                    child: PlanCard(
                      color: DT.cardBlue,
                      difficulty: 'Medium',
                      title: 'Yoga Group',
                      date: '25 Nov.',
                      time: '14:00-15:00',
                      room: 'A5 room',
                      trainer: 'Tiffany Way',
                      trainerImage: '',
                      isLeft: false,
                      onTap: () => context.go('/session-detail'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
