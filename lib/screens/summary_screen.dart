import 'package:flutter/material.dart';
import 'package:health_band/widgets/unit_card_widget.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 14.0, top: 7, bottom: 7),
          child: IconButton.filled(
            style: IconButton.styleFrom(
              backgroundColor: Colors.grey,
            ),
            padding: const EdgeInsets.all(0),
            iconSize: 28,
            color: Colors.white,
            icon: const Icon(Icons.person_outline),
            onPressed: () {
              // TODO: open user setting
            },
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
          child: SizedBox(
            height: 160,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UnitCardWidget(
                  direction: Axis.vertical,
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
                      UnitCardWidget(
                        icon: Icons.monitor_heart,
                        value: 0,
                        unit: 'BPM',
                      ),
                      SizedBox(height: 20),
                      UnitCardWidget(
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
        ),
      ),
    );
  }
}
