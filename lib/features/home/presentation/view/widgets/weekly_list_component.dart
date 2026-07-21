import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeeklyListComponent extends StatelessWidget {
  const WeeklyListComponent({
    super.key,
    required this.selectedDate,
    required this.onDateSelected,
  });

  final DateTime selectedDate;
  final Function(DateTime date) onDateSelected;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final startOfWeek = now.subtract(Duration(days: now.weekday - 1));
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          final date = startOfWeek.add(Duration(days: index));
          final isSelected =
              date.day == selectedDate.day &&
              date.month == selectedDate.month &&
              date.year == selectedDate.year;
          return GestureDetector(
            onTap: () => onDateSelected(date),
            child: Container(
              width: 50,
              margin: EdgeInsets.only(right: DT.s3),
              decoration: BoxDecoration(
                color: isSelected ? DT.bgBlack : DT.bgWhite,
                borderRadius: BorderRadius.circular(DT.rCardSmall),
                boxShadow: [
                  BoxShadow(
                    color: DT.shadowMedium,
                    blurRadius: 12,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    DateFormat('E').format(date),
                    style: TextStyle(
                      fontSize: 12,
                      color: isSelected ? DT.textWhite : DT.textPrimary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    DateFormat('d').format(date),
                    style: TextStyle(
                      fontSize: 16,
                      color: isSelected ? DT.textWhite : DT.textPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
