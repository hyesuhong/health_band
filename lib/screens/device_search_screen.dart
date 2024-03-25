import 'package:flutter/material.dart';

class DeviceSearchScreen extends StatelessWidget {
  const DeviceSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    child: Text('검색 결과'),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                          color: index.isEven
                              ? Colors.transparent
                              : Colors.grey[100],
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
                                    child: Text('연결'),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                      itemCount: 10,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: const Size.fromHeight(40),
                ),
                onPressed: () {
                  // TODO: 기기 검색
                },
                child: const Text('검색'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
