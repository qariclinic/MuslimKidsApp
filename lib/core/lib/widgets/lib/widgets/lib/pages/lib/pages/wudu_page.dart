import 'package:flutter/material.dart';
import '../core/localization.dart';
import '../core/app_theme.dart';

class WuduPage extends StatelessWidget {
  final Lang lang;
  final Map<String, dynamic> texts;
  const WuduPage({super.key, required this.lang, required this.texts});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appBg(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text(t(lang,'wudu_title',texts)), backgroundColor: Colors.transparent),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            t(lang,'wudu_steps',texts),
            style: const TextStyle(color: Colors.white, fontSize: 18),
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
    );
  }
}
