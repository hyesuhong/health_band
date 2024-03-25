import 'package:flutter/material.dart';
import 'package:health_band/screens/device_manage_screen.dart';
import 'package:health_band/screens/summary_screen.dart';

class AppRoutes {
  static const home = '/';
  static const device = '/device';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return _buildRoute(const SummaryScreen(), settings: settings);
      case AppRoutes.device:
        return _buildRoute(const DeviceManageScreen(), settings: settings);
      default:
        return _errorRoute();
    }
  }

  static CustomPageRoute _buildRoute(Widget child,
      {required RouteSettings settings}) {
    return CustomPageRoute(
        settings: settings, builder: (BuildContext context) => child);
  }

  static Route<dynamic> _errorRoute() {
    return CustomPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          // backgroundColor: kBlue,
          title: const Text(
            'ERROR!!',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 450.0,
                  width: 450.0,
                ),
                Text(
                  'Seems the route you\'ve navigated to doesn\'t exist!!',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class CustomPageRoute<T> extends MaterialPageRoute<T> {
  CustomPageRoute({required WidgetBuilder builder, RouteSettings? settings})
      : super(builder: builder, settings: settings);

  // @override
  // Widget buildTransitions(BuildContext context, Animation<double> animation,
  //     Animation<double> secondaryAnimation, Widget child) {
  //   return child;
  // }
}
