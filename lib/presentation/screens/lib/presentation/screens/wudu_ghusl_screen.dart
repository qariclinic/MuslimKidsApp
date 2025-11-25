import 'package:flutter/material.dart';

class WuduGhuslScreen extends StatelessWidget {
  const WuduGhuslScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('طہارت: وضو، غسل، تیمم', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildLessonCard(
              context,
              title: 'وضو کا مکمل طریقہ (پریکٹیکل)',
              steps: [
                '1. نیت کرنا',
                '2. بسم اللہ پڑھنا',
                '3. ہاتھوں کو گٹوں تک دھونا',
                // ... continue all steps
              ],
              assetPath: 'assets/images/wudu_steps.png', // Replace with your image asset
            ),
            const SizedBox(height: 20),
            _buildLessonCard(
              context,
              title: 'غسل کا فرض اور سنتیں',
              steps: [
                '1. غسل کے تین فرائض',
                '2. مسنون طریقہ',
              ],
              assetPath: 'assets/images/ghusl_steps.png', // Replace with your image asset
            ),
            const SizedBox(height: 20),
            _buildLessonCard(
              context,
              title: 'تیمم کا طریقہ',
              steps: [
                '1. نیت',
                '2. ضرب لگانا',
                // ...
              ],
              assetPath: 'assets/images/tayammum.png', // Replace with your image asset
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLessonCard(BuildContext context, {required String title, required List<String> steps, required String assetPath}) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ExpansionTile(
        initiallyExpanded: true,
        leading: const Icon(Icons.check_circle_outline, color: Color(0xFF2196F3)),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Placeholder for Practical Image/Video
                Image.asset(
                  assetPath,
                  height: 150,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 150,
                    color: Colors.grey[200],
                    child: Center(child: Text('تصویر یا ویڈیو پلیس ہولڈر', style: TextStyle(color: Colors.grey[600]))),
                  ),
                ),
                const SizedBox(height: 15),
                // Detailed Steps
                ...steps.map((step) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text('• $step', style: const TextStyle(fontSize: 16)),
                )).toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
