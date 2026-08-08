import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:flutter/material.dart';

class Activitylist extends StatelessWidget {
  const Activitylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActivityItem(
          icon: Icons.directions_run,
          title: 'Physical activity',
          subTitle: '2 days ago',
          onTap: () {},
        ),
        ActivityItem(
          icon: Icons.assessment,
          title: 'Statistics',
          subTitle: '109 kilo/year',
          onTap: () {},
        ),
        ActivityItem(
          icon: Icons.route,
          title: 'route',
          subTitle: '7',
          onTap: () {},
        ),
        ActivityItem(
          icon: Icons.flash_on,
          title: 'equipment',
          subTitle: 'Nike pegasus 3000',
          onTap: () {},
        ),
        ActivityItem(
          icon: Icons.emoji_events,
          title: 'best time',
          subTitle: 'show all',
          onTap: () {},
        ),
      ],
    );
  }
}

class ActivityItem extends StatelessWidget {
  const ActivityItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: DT.s4),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: DT.borderLight,
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: DT.iconLightGrey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                icon,
                color: DT.iconGrey,
                size: 20,
              ),
            ),
            SizedBox(
              width: DT.s4,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: DT.textPrimary,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: DT.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: DT.textGrey,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
