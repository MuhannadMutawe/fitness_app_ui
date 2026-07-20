import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:fitness_app_ui/features/home/presentation/view/widgets/app_bar_title.dart';
import 'package:fitness_app_ui/features/home/presentation/view/widgets/daily_challenge_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
          ],
        ),
      ),
    );
  }
}
