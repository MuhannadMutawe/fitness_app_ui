import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:flutter/material.dart';

class SocialMediaCards extends StatelessWidget {
  const SocialMediaCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SocialIcon(icon: Icons.camera_alt, color: DT.socialPink),
          SocialIcon(icon: Icons.play_circle_fill, color: DT.socialRed),
          SocialIcon(icon: Icons.chat_bubble, color: DT.socialBlue),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
    required this.icon,
    required this.color,
  });

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: DT.bgWhite,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: DT.shadowMedium,
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Icon(
        icon,
        color: color,
        size: 20,
      ),
    );
  }
}
