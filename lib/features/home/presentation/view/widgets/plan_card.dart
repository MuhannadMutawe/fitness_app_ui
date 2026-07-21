import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:flutter/material.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({
    super.key,
    required this.color,
    required this.difficulty,
    required this.title,
    required this.date,
    required this.time,
    required this.room,
    required this.trainer,
    required this.trainerImage,
    required this.isLeft,
    required this.onTap,
  });

  final Color color;
  final String difficulty;
  final String title;
  final String date;
  final String time;
  final String room;
  final String trainer;
  final String trainerImage;
  final bool isLeft;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(DT.s4),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(DT.rChip),
          boxShadow: [
            BoxShadow(
              color: DT.shadowMedium,
              blurRadius: 12,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: DT.s2,
                vertical: DT.s1,
              ),
              decoration: BoxDecoration(
                color: DT.bgWhite.withOpacity(0.3),
                borderRadius: BorderRadius.circular(DT.s2),
              ),
              child: Text(
                difficulty,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: DT.textPrimary,
                ),
              ),
            ),
            SizedBox(
              height: DT.s3,
            ),
            Text(
              date,
              style: TextStyle(
                fontSize: 12,
                color: DT.textSecondary,
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: 12,
                color: DT.textSecondary,
              ),
            ),
            Text(
              room,
              style: TextStyle(
                fontSize: 12,
                color: DT.textSecondary,
              ),
            ),
            Spacer(),
            Row(
              children: [
                if (isLeft) ...[
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: NetworkImage(trainerImage),
                  ),
                  SizedBox(
                    width: DT.s2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trainer',
                        style: TextStyle(
                          fontSize: 18,
                          color: DT.textSecondary,
                        ),
                      ),
                      Text(
                        trainer,
                        style: TextStyle(
                          fontSize: 12,
                          color: DT.textPrimary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ] else ...[
                  Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: DT.iconLightGrey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(DT.s2),
                    ),
                    child: Icon(
                      Icons.extension,
                      color: DT.iconGrey,
                      size: 20,
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
