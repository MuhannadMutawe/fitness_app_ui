import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:flutter/material.dart';

class UserChip extends StatelessWidget {
  const UserChip({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: DT.bgWhite,
          width: 2,
        ),
      ),
      child: ClipOval(
        child: Image.network(
          imageUrl,
          errorBuilder: (context, error, stackTrace) => CircleAvatar(
            backgroundColor: DT.metricBlue,
            child: Icon(
              Icons.person_2,
            ),
          ),
        ),
      ),
    );
  }
}
