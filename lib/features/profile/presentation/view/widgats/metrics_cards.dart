import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:flutter/material.dart';

class MetricsCards extends StatelessWidget {
  const MetricsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MetricCard(
            color: DT.metricGreen,
            title: 'Start weight',
            value: '53.3 kg',
          ),
        ),
        SizedBox(
          width: DT.s6,
        ),
        Expanded(
          child: MetricCard(
            color: DT.metricOrange,
            title: 'Start weight',
            value: '53.3 kg',
          ),
        ),
        SizedBox(
          width: DT.s6,
        ),
        Expanded(
          child: MetricCard(
            color: DT.metricBlue,
            title: 'Start weight',
            value: '53.3 kg',
          ),
        ),
      ],
    );
  }
}

class MetricCard extends StatelessWidget {
  const MetricCard({
    super.key,
    required this.color,
    required this.title,
    required this.value,
  });

  final Color color;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DT.s4),
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(DT.rCardSmall),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: DT.textSecondary,
            ),
          ),
          SizedBox(
            height: DT.s2,
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: DT.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
