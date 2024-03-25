import 'package:flutter/material.dart';
import 'package:health_band/router.dart';
import 'package:health_band/widgets/device_info_widget.dart';

class DeviceManageScreen extends StatelessWidget {
  const DeviceManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기기 관리'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Expanded(
                      child: DeviceInfoWidget(
                        deviceName: '기기명',
                      ),
                    ),
                    // TODO: 저장된 기기가 있을 경우, 하단 텍스트 노출
                    Text(
                      '기존 기기와 연결을 끊고 새로운 기기를 연결합니다.',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
              child: FilledButton(
                // TODO: 저장된 기기 정보 유무로 텍스트 변경(유: 다른 기기 검색 / 무: 기기 검색)
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: const Size.fromHeight(40),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.deviceSearch);
                },
                child: const Text('다른 기기 검색'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
