import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; // Ensure Widgets are imported

// Define a simple model for the menu items
class MenuItem {
  final String titleUrdu;
  final String titleEnglish;
  final IconData icon;
  final Color color;
  final Widget screen; // Placeholder for actual screens

  MenuItem({
    required this.titleUrdu,
    required this.titleEnglish,
    required this.icon,
    required this.color,
    required this.screen,
  });
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // 🌈 Define your eye-catching mixed-color menu items
  static final List<MenuItem> _menuItems = [
    MenuItem(
      titleUrdu: 'طہارت (وضو/غسل)',
      titleEnglish: 'Purity (Wudu/Ghusl)',
      icon: Icons.water_drop,
      color: const Color(0xFF2196F3), // Bright Blue
      screen: const Placeholder(), // Replace with WuduGhuslScreen()
    ),
    MenuItem(
      titleUrdu: 'نماز و فرائض',
      titleEnglish: 'Salat & Duties',
      icon: Icons.mosque,
      color: const Color(0xFF4CAF50), // Green
      screen: const Placeholder(), // Replace with SalatScreen()
    ),
    MenuItem(
      titleUrdu: 'روزہ کے اعمال',
      titleEnglish: 'Fasting Rituals',
      icon: Icons.brightness_3,
      color: const Color(0xFFFF9800), // Amber
      screen: const Placeholder(), // Replace with FastingScreen()
    ),
    MenuItem(
      titleUrdu: 'کلمے و ایمانیات',
      titleEnglish: 'Kalimas & Faith',
      icon: Icons.star,
      color: const Color(0xFF9C27B0), // Purple
      screen: const Placeholder(), // Replace with KalimasImanScreen()
    ),
    MenuItem(
      titleUrdu: 'نورانی قاعدہ و تجوید',
      titleEnglish: 'Noorani & Tajweed',
      icon: Icons.menu_book,
      color: const Color(0xFF795548), // Brown
      screen: const Placeholder(), // Replace with QuranTajweedScreen()
    ),
    MenuItem(
      titleUrdu: 'اسلامی آداب',
      titleEnglish: 'Islamic Manners',
      icon: Icons.handshake,
      color: const Color(0xFFE91E63), // Pink
      screen: const Placeholder(), // Replace with AdabScreen()
    ),
    MenuItem(
      titleUrdu: 'صحابیات و انبیاء',
      titleEnglish: 'Sahaba & Prophets',
      icon: Icons.people,
      color: const Color(0xFF00BCD4), // Cyan
      screen: const Placeholder(), // Replace with SeerahSahabaScreen()
    ),
    MenuItem(
      titleUrdu: 'اخلاقی تربیت',
      titleEnglish: 'Ethical Training',
      icon: Icons.gavel,
      color: const Color(0xFFFF5722), // Deep Orange
      screen: const Placeholder(), // Replace with EthicsScreen()
    ),
    MenuItem(
      titleUrdu: 'گیمز و پہیلیاں',
      titleEnglish: 'Games & Puzzles',
      icon: Icons.extension,
      color: const Color(0xFF607D8B), // Blue Grey
      screen: const Placeholder(), // Replace with KidsGamesScreen()
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // Note: We use the context to get localized strings in a full app, 
    // but for simplicity, we use the direct Urdu string here.
    return Scaffold(
      appBar: AppBar(
        title: const Text('مسلم شعیب کڈز', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
        centerTitle: true,
        // Logo (Assuming logo is in assets/images/logo.png and loaded in pubspec.yaml)
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/logo.png', height: 40), 
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: _menuItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items per row
            childAspectRatio: 1.0, 
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final item = _menuItems[index];
            return _buildMenuItem(context, item);
          },
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, MenuItem item) {
    return InkWell(
      onTap: () {
        // Navigate to the respective screen
        Navigator.push(context, MaterialPageRoute(builder: (context) => item.screen));
      },
      child: Card(
        // Use the defined color for a striking border/background
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: item.color, width: 4), // Eye-catching border
        ),
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(item.icon, size: 50, color: item.color),
              const SizedBox(height: 10),
              // Use Urdu title prominently
              Text(
                item.titleUrdu,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: item.color.darkerColor(), // Slightly darker text for contrast
                ),
              ),
              const SizedBox(height: 4),
              // Secondary (English) title
              Text(
                item.titleEnglish,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Helper extension to make the menu text color slightly darker for better readability
extension ColorExtension on Color {
  Color darkerColor() {
    int r = (red * 0.8).round();
    int g = (green * 0.8).round();
    int b = (blue * 0.8).round();
    return Color.fromARGB(alpha, r.clamp(0, 255), g.clamp(0, 255), b.clamp(0, 255));
  }
}
