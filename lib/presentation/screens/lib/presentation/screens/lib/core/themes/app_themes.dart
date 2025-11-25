import 'package:flutter/material.dart';

class AppThemes {
  // Define a bright, kid-friendly color palette
  static const Color primaryColor = Color(0xFF4CAF50); // Green
  static const Color accentColor = Color(0xFFFFC107); // Amber/Yellow
  static const Color appBarColor = Color(0xFF2196F3); // Bright Blue
  static const Color secondaryAccent = Color(0xFFE91E63); // Pink/Magenta

  static final ThemeData appTheme = ThemeData(
    // 1. Primary/Accent Colors (Mixed Colors)
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.green, // Base for primary color shades
    ).copyWith(
      secondary: accentColor,
      primary: primaryColor,
    ),
    
    // 2. Background and Font
    scaffoldBackgroundColor: const Color(0xFFF8F8F8), // Light Background
    fontFamily: 'JameelNooriNastaleeq', // Placeholder for a good Urdu font

    // 3. App Bar Styling (Blue Header)
    appBarTheme: const AppBarTheme(
      backgroundColor: appBarColor, 
      foregroundColor: Colors.white,
      elevation: 4,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        fontSize: 22, 
        fontWeight: FontWeight.bold,
      ),
    ),
    
    // 4. Card Styling for Menu Items
    cardTheme: CardTheme(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      color: Colors.white,
    ),
    
    // 5. Button Styling (Pink/Magenta Accent)
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, 
        backgroundColor: secondaryAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),

    // 6. Icon Colors
    iconTheme: const IconThemeData(
      color: primaryColor,
    ),
  );
}
