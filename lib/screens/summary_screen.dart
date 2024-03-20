import 'package:flutter/material.dart';
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
            child: Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey,
              ),
              child: const Center(
                child: Icon(
                  Icons.watch_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 160,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UnitCardWidget.vertical(
                      icon: Icons.directions_walk,
                      value: 0,
                      unit: 'steps',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          UnitCardWidget.horizontal(
                            icon: Icons.monitor_heart,
                            value: 0,
                            unit: 'BPM',
                          ),
                          SizedBox(height: 20),
                          UnitCardWidget.horizontal(
                            icon: Icons.thermostat,
                            value: 0,
                            unit: '°C',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 160,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          UnitCardWidget.horizontal(
                            icon: Icons.local_fire_department,
                            value: 0,
                            unit: 'kcal',
                          ),
                          SizedBox(height: 20),
                          UnitCardWidget.horizontal(
                            icon: Icons.route,
                            value: 0,
                            unit: 'km',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    UnitCardWidget.vertical(
                      icon: Icons.timelapse,
                      value: 0,
                      unit: 'minutes',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
