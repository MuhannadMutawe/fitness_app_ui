import 'package:fitness_app_ui/app/designe/designe_token.dart';
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

class SessionCard extends StatelessWidget {
  const SessionCard({
    super.key,
    required this.title,
    required this.trainer,
    required this.duration,
    required this.difficulty,
    required this.calories,
    required this.description,
    required this.color,
    required this.onTap,
  });

  final String title;
  final String trainer;
  final String duration;
  final String difficulty;
  final String calories;
  final String description;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(DT.s5),
        decoration: BoxDecoration(
          color: DT.bgWhite,
          borderRadius: BorderRadius.circular(DT.s5),
          border: Border.all(color: DT.bgWhite, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withAlpha(80),
              blurRadius: 8,
              offset: Offset(2, 8),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 4,
              height: 80,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            SizedBox(
              width: DT.s4,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: DT.textPrimary,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: DT.s2,
                          vertical: DT.s1,
                        ),
                        decoration: BoxDecoration(
                          color: _getDifficultyColor(
                            difficulty,
                          ).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(DT.s2),
                        ),
                        child: Text(
                          difficulty,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: _getDifficultyColor(difficulty),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: DT.s2,
                  ),
                  Text(
                    'trainer : $trainer',
                    style: TextStyle(
                      fontSize: 14,
                      color: DT.textPrimary,
                    ),
                  ),
                  SizedBox(
                    height: DT.s2,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: DT.textPrimary,
                      height: 1.4,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: DT.s3,
                  ),
                  Row(
                    children: [
                      InfoChip(
                        icon: Icons.access_time,
                        text: duration,
                      ),
                      SizedBox(
                        width: DT.s3,
                      ),
                      InfoChip(
                        icon: Icons.local_fire_department,
                        text: calories,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: DT.s4,
            ),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(DT.rChip),
              ),
              child: Icon(
                Icons.arrow_forward_ios,
                color: color,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'light':
        return DT.difficultyLight;
      case 'medium':
        return DT.difficultyMedium;
      case 'hard':
        return DT.difficultyHard;
      default:
        return DT.iconGrey;
    }
  }
}

class InfoChip extends StatelessWidget {
  const InfoChip({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 16,
          color: DT.iconGrey,
        ),
        SizedBox(
          width: DT.s1,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: DT.textSecondary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
