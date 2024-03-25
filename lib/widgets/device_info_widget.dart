import 'package:flutter/material.dart';

class DeviceInfoWidget extends StatelessWidget {
  final String? deviceName;
  final String? macAddress;

  const DeviceInfoWidget({
    super.key,
    this.deviceName,
    this.macAddress,
  });

  bool get _isAvailable => deviceName != null && macAddress != null;

  List<Widget> _buildDeviceInfo() {
    return [
      const SizedBox(height: 20),
      if (_isAvailable)
        Text(
          deviceName!,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      if (_isAvailable) const SizedBox(height: 4),
      Text(
        _isAvailable ? macAddress! : '기기 정보가 없습니다.',
        style: const TextStyle(
          fontSize: 12,
          color: Colors.grey,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 160,
          height: 160,
          color: _isAvailable ? Colors.grey : Colors.transparent,
          child: _isAvailable
              ? const Text('기기 이미지 영역')
              : const Icon(
                  Icons.no_cell_outlined,
                  color: Colors.grey,
                  size: 100,
                ),
        ),
        ..._buildDeviceInfo(),
      ],
    );
  }
}
