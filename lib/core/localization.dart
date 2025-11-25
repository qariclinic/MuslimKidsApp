enum Lang { ur, ar, en }

String t(Lang lang, String key, Map<String, dynamic> map) {
  final node = map[key] as Map<String, dynamic>?;
  if (node == null) return key;
  final value = node[lang.name] as String?;
  return value ?? key;
}
