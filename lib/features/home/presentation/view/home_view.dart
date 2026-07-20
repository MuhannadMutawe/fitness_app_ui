import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        title: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: DT.bgWhite,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: DT.shadowMedium,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.network(
                  'https://example.com/profile.jpg',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Icon(
                    Icons.person,
                    color: DT.iconGrey,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: DT.s4,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello, There!',
                    style: TextStyle(
                      color: DT.textPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: DT.s1,
                  ),
                  Text(
                    'Today ${DateFormat('EEEE, MMMM d').format(DateTime.now())}',
                    style: TextStyle(
                      color: DT.textSecondary,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: DT.s4,
            ),
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: DT.bgWhite,
                borderRadius: BorderRadius.circular(DT.rCardSmall),
                boxShadow: [
                  BoxShadow(
                    color: DT.shadowLight,
                    blurRadius: 12,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Icon(
                Icons.search,
                color: DT.iconGrey,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DailyChallengeCard(),
          ],
        ),
      ),
    );
  }
}

class DailyChallengeCard extends StatelessWidget {
  const DailyChallengeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DT.s5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            DT.challengeGradientStart,
            DT.challengeGradientEnd,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(DT.rCard),
        boxShadow: [
          BoxShadow(
            color: DT.shadowLight,
            blurRadius: 20,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daily challeng',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: DT.textPrimary,
                  ),
                ),
                SizedBox(
                  height: DT.s2,
                ),
                Text(
                  'You are plan before 9:00 AM',
                  style: TextStyle(
                    fontSize: 14,
                    color: DT.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
