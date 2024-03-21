import 'package:flutter/material.dart';

class GaugeWidget extends StatelessWidget {
  final double size;
  final int total;
  final int value;
  final String? label;
  final bool visibleValue;

  double get percentage => value / total;

  const GaugeWidget({
    super.key,
    required this.size,
    required this.total,
    required this.value,
    this.label,
    this.visibleValue = true,
  });

  Widget _buildGaugeInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (visibleValue)
          Text(
            value.toString(),
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
        if (label != null)
          Text(
            label!,
            style: const TextStyle(color: Colors.grey),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: size,
          height: size,
          child: CircularProgressIndicator(
            value: percentage,
            color: Colors.grey,
            backgroundColor: Colors.black12,
            strokeAlign: BorderSide.strokeAlignInside,
            strokeCap: StrokeCap.round,
            strokeWidth: 10,
          ),
        ),
        if (visibleValue || label != null) _buildGaugeInfo(),
      ],
    );
  }
}
