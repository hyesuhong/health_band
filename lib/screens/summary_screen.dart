import 'package:flutter/material.dart';
import 'package:health_band/router.dart';
import 'package:health_band/widgets/gauge_widget.dart';
import 'package:health_band/widgets/profile_widget.dart';
import 'package:health_band/widgets/unit_card_widget.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Container(
          padding: const EdgeInsets.only(left: 14.0, top: 7, bottom: 7),
          child: GestureDetector(
            onTap: () {
              // TODO: open user setting
            },
            child: const ProfileWidget(),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: SizedBox(
              width: 42,
              height: 42,
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.device);
                },
                icon: const Icon(Icons.watch_outlined),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                constraints: const BoxConstraints(minWidth: double.infinity),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  color: Colors.grey[200],
                ),
                child: const Column(
                  children: [
                    GaugeWidget(
                        size: 160, total: 8000, value: 2118, label: 'Steps'),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                '123 Kcal',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Burned',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                '3.6 Km',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Distance',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const UnitCardWidget(
                title: 'Heart rate',
                icon: Icons.monitor_heart_outlined,
                value: 0,
                unit: 'BPM',
              ),
              const SizedBox(height: 20),
              const UnitCardWidget(
                title: 'Temperature',
                icon: Icons.thermostat,
                value: 0,
                unit: '℃',
              ),
              const SizedBox(height: 20),
              const UnitCardWidget(
                title: 'Movement Time',
                icon: Icons.timer_outlined,
                value: 0,
                unit: 'Minutes',
              )
            ],
          ),
        ),
      ),
    );
  }
}
