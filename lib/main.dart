import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:live_tracking_app/src/app/app.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: LiveTrackingApp()));
}
