import 'package:flutter/material.dart';
import '../core/localization.dart';
import '../core/app_theme.dart';

class FastingPage extends StatelessWidget {
  final Lang lang;
  final Map<String, dynamic> texts;
  const FastingPage({super.key, required this.lang, required this.texts});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appBg(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text(t(lang,'fasting_title',texts)), backgroundColor: Colors.transparent),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            t(lang,'fasting_acts',texts),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
