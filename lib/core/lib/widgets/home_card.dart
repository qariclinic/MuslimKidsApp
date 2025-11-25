import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const HomeCard({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white12, borderRadius: BorderRadius.circular(14),
        ),
        child: Text(title, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
