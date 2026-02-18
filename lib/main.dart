import 'package:device_preview/device_preview.dart';
import 'package:lostify/app/my_app.dart';
import 'package:lostify/core/di/dependancy_injection.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://fvjcxqtbqzkhzwjnrcva.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ2amN4cXRicXpraHp3am5yY3ZhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjE3MjIzMjYsImV4cCI6MjA3NzI5ODMyNn0.Ih7b8KG_30nx3eNYs2tnkRtiQTIuwpqAJ1dSqwyQm8Y",
  );
  setupDI();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(),
    ),
  );
}



