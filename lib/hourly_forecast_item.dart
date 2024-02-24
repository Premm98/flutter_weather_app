import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temp;
  const HourlyForecastItem({
    super.key,
    required this.time,
    required this.icon,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              time,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Icon(
              icon,
              size: 32,
              color:
                  icon == Icons.cloud ? Colors.blueAccent : Colors.yellowAccent,
            ),
            const SizedBox(height: 10),
            Text(
              temp,
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
