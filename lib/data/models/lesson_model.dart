// Lesson Model for all sections: Wudu, Salat, Tajweed, Adab, etc.

class LessonModel {
  final String id;
  final String titleUrdu;
  final String titleArabic;
  final String titleEnglish;
  final String contentUrdu;
  final String contentArabic;
  final String contentEnglish;
  final String? videoUrl; // For Practical/Demos
  final String? audioPath; // For Qira'at/Duas/Azkar
  final List<String>? steps; // For Wudu/Salat steps
  final String category; // e.g., 'Wudu', 'Salat', 'Adab'

  LessonModel({
    required this.id,
    required this.titleUrdu,
    required this.titleArabic,
    required this.titleEnglish,
    required this.contentUrdu,
    required this.contentArabic,
    required this.contentEnglish,
    this.videoUrl,
    this.audioPath,
    this.steps,
    required this.category,
  });

  // Factory method to create an object from a JSON map (useful for loading from JSON assets)
  factory LessonModel.fromJson(Map<String, dynamic> json) {
    return LessonModel(
      id: json['id'] as String,
      titleUrdu: json['titleUrdu'] as String,
      titleArabic: json['titleArabic'] as String,
      titleEnglish: json['titleEnglish'] as String,
      contentUrdu: json['contentUrdu'] as String,
      contentArabic: json['contentArabic'] as String,
      contentEnglish: json['contentEnglish'] as String,
      videoUrl: json['videoUrl'] as String?,
      audioPath: json['audioPath'] as String?,
      steps: json['steps'] != null ? List<String>.from(json['steps']) : null,
      category: json['category'] as String,
    );
  }
}
