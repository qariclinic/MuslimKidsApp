import 'package:flutter/material.dart';
import '../core/localization.dart';
import '../core/app_theme.dart';

class SalahPage extends StatelessWidget {
  final Lang lang;
  final Map<String, dynamic> texts;
  const SalahPage({super.key, required this.lang, required this.texts});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appBg(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text(t(lang,'salah_title',texts)), backgroundColor: Colors.transparent),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(t(lang,'salah_faraiz',texts), style: const TextStyle(color: Colors.white)),
            const SizedBox(height: 8),
            Text(t(lang,'salah_wajibat',texts), style: const TextStyle(color: Colors.white)),
            const SizedBox(height: 8),
            Text(t(lang,'salah_sunan',texts), style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
