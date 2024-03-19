import 'package:flutter/material.dart';

class UnitCardWidget extends StatelessWidget {
  final Axis direction;
  final IconData icon;
  final int value;
  final String unit;
  final String? description;

  const UnitCardWidget({
    super.key,
    this.direction = Axis.horizontal,
    required this.icon,
    required this.value,
    required this.unit,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          color: Colors.grey[200],
        ),
        child: Center(
          child: direction == Axis.horizontal
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Icon(icon, size: 20, color: Colors.white),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          value.toString(),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          unit,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Icon(icon, color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      value.toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      unit,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
