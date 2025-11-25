import 'package:flutter/material.dart';
import '../core/localization.dart';

class LangSwitch extends StatelessWidget {
  final Lang current;
  final void Function(Lang) onChange;
  const LangSwitch({super.key, required this.current, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: Lang.values.map((l) {
        final selected = l == current;
        return ChoiceChip(
          label: Text(l.name.toUpperCase()),
          selected: selected,
          onSelected: (_) => onChange(l),
        );
      }).toList(),
    );
  }
}
