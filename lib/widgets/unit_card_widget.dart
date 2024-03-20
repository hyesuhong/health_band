import 'package:flutter/material.dart';

class UnitCardWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final int value;
  final String unit;

  const UnitCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: double.infinity),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        color: Colors.grey[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                icon,
                size: 16,
                color: Colors.grey,
              ),
              const SizedBox(width: 4),
              Text(title),
            ],
          ),
          const SizedBox(height: 8),
          Text.rich(
            TextSpan(
              text: value.toString(),
              children: [
                TextSpan(
                  text: ' $unit',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
