import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DT.bgWhite,
      appBar: AppBar(
        backgroundColor: DT.bgWhite,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 18,
            color: DT.textPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: DT.textPrimary,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(DT.s5),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
