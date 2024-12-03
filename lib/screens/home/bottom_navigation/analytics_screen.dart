import 'package:flutter/cupertino.dart';
import 'package:safe_her/google_map.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: GoogleMapFlutter(),
    );

  }
}
