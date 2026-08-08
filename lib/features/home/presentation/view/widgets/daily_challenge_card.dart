import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:fitness_app_ui/features/home/presentation/view/widgets/user_chip.dart';
import 'package:flutter/material.dart';
// import 'package:rive/rive.dart' as rive;

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
            color: DT.shadowMedium,
            blurRadius: 20,
            offset: Offset(0, 5),
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
                SizedBox(
                  height: DT.s4,
                ),
                Row(
                  children: [
                    UserChip(
                      imageUrl:
                          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=40&h=40&fit=crop&crop=face',
                    ),
                    Transform.translate(
                      offset: Offset(-8, 0),
                      child: UserChip(
                        imageUrl:
                            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=40&h=40&fit=crop&crop=face',
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-16, 0),
                      child: UserChip(
                        imageUrl:
                            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=40&h=40&fit=crop&crop=face',
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-24, 0),
                      child: UserChip(
                        imageUrl:
                            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=40&h=40&fit=crop&crop=face',
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-32, 0),
                      child: UserChip(
                        imageUrl:
                            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=40&h=40&fit=crop&crop=face',
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-40, 0),
                      child: Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          color: DT.bgWhite,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: DT.bgWhite,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '+4',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: DT.textSecondary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Container(
          //   height: 120,
          //   width: 120,
          //   child:RiveAnimation.asset(
          //     'assets/animations/your_animation.riv',
          //     fit: BoxFit.contain,
          //   ),
          // ),
        ],
      ),
    );
  }
}
