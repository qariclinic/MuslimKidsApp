import 'dart:convert';
import 'package:flutter/material.dart';
import 'core/app_theme.dart';
import 'pages/home_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future<Map<String, dynamic>> loadTexts(BuildContext context) async {
  final ur = await DefaultAssetBundle.of(context).loadString('lib/data/content_ur.json');
  return jsonDecode(ur) as Map<String, dynamic>;
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MuslimKidsApp());
}

class MuslimKidsApp extends StatelessWidget {
  const MuslimKidsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: buildTheme(false),
      home: FutureBuilder<Map<String, dynamic>>(
        future: loadTexts(context),
        builder: (context, snap) {
          final texts = snap.data ?? {};
          return HomePage(texts: texts);
        },
      ),
    );
  }
}
