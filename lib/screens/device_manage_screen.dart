import 'package:flutter/material.dart';

class DeviceManageScreen extends StatelessWidget {
  const DeviceManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('장치 관리'),
        actions: [
          Container(
            width: 30,
            height: 30,
            margin: const EdgeInsets.only(
              right: 14,
            ),
            child: IconButton(
              padding: const EdgeInsets.all(0),
              iconSize: 24,
              onPressed: () {},
              icon: const Icon(Icons.radar_outlined),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                color: index.isEven ? Colors.transparent : Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '기기명',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      'mac address',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 12),
                            minimumSize: Size.zero,
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                            ),
                            foregroundColor: Colors.grey[700],
                            fixedSize: const Size.fromWidth(80),
                          ),
                          onPressed: () {},
                          child: Text(index.isOdd ? '연결' : '연결 끊기'),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
            itemCount: 2,
          ),
        ),
      ),
    );
  }
}
