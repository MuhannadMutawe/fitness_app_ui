import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:flutter/material.dart';

class UserProfileSection extends StatelessWidget {
  const UserProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: DT.borderGrey,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: DT.shadowLight,
                blurRadius: 12,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: ClipOval(
            child: Image.network(
              'https://yourownimage.com',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: DT.iconLightGrey.withOpacity(0.3),
                child: const Icon(
                  Icons.person,
                  size: 48,
                  color: DT.iconGrey,
                ),
              ), // Container
            ), // Image.network
          ), // CLipOval
        ),
        SizedBox(
          width: DT.s4,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sendra Glam',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: DT.textPrimary,
                ),
              ),
              SizedBox(
                height: DT.s1,
              ),
              Text(
                'Danmark Copenhagen',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: DT.textSecondary,
                ),
              ),
              SizedBox(
                height: DT.s3,
              ),
              Row(
                children: [
                  Text(
                    'Followers 75',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: DT.textPrimary,
                    ),
                  ),
                  SizedBox(
                    width: DT.s4,
                  ),
                  Text(
                    'Following 75',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: DT.textPrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: DT.iconLightGrey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(DT.s2),
              ),
              child: Icon(
                Icons.share,
                color: DT.iconGrey,
                size: 18,
              ),
            ),
            SizedBox(
              height: DT.s2,
            ),
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: DT.iconLightGrey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(DT.s2),
              ),
              child: Icon(
                Icons.edit,
                color: DT.iconGrey,
                size: 18,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
