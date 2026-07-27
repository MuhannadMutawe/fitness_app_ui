import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:fitness_app_ui/features/session/presentation/view/widgets/session_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SessionView extends StatelessWidget {
  const SessionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DT.bg,
        elevation: 0,
        title: Text(
          'Session',
          style: TextStyle(
            fontSize: 18,
            color: DT.textPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(DT.s5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Availabel Sessions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: DT.textPrimary,
              ),
            ),
            SizedBox(
              height: DT.s2,
            ),
            Text(
              'Choose your workout session',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: DT.textPrimary,
              ),
            ),
            SizedBox(
              height: DT.s6,
            ),
            SessionCard(
              title: 'Yoga Group',
              trainer: 'Tiffany Way',
              duration: '45 min',
              difficulty: 'Light',
              calories: '115 kcal',
              description:
                  'Gentle yinvasa flow to improve flexibility and balance.',
              color: DT.cardYellow,
              onTap: () => context.go('/session-detail'),
            ),
            const SizedBox(height: DT.s4),
            SessionCard(
              title: 'Yoga Group',
              trainer: 'Tiffany Way',
              duration: '45 min',
              difficulty: 'hard',
              calories: '115 kcal',
              description:
                  'Gentle yinvasa flow to improve flexibility and balance.',
              color: DT.cardYellow,
              onTap: () => context.go('/session-detail'),
            ),
            const SizedBox(
              height: DT.s6,
            ),
            SessionCard(
              title: 'Yoga Group',
              trainer: 'Tiffany Way',
              duration: '45 min',
              difficulty: 'Medium',
              calories: '115 kcal',
              description:
                  'Gentle yinvasa flow to improve flexibility and balance.',
              color: DT.cardYellow,
              onTap: () => context.go('/session-detail'),
            ),
            const SizedBox(
              height: DT.s6,
            ),
            SessionCard(
              title: 'Yoga Group',
              trainer: 'Tiffany Way',
              duration: '45 min',
              difficulty: 'Light',
              calories: '115 kcal',
              description:
                  'Gentle yinvasa flow to improve flexibility and balance.',
              color: DT.cardYellow,
              onTap: () => context.go('/session-detail'),
            ),
            const SizedBox(
              height: DT.s6,
            ),
            SessionCard(
              title: 'Yoga Group',
              trainer: 'Tiffany Way',
              duration: '45 min',
              difficulty: 'hard',
              calories: '115 kcal',
              description:
                  'Gentle yinvasa flow to improve flexibility and balance.',
              color: DT.cardYellow,
              onTap: () => context.go('/session-detail'),
            ),
          ],
        ),
      ),
    );
  }
}
