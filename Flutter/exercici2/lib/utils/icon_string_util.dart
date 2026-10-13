import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert_rounded,
  'account_circle': Icons.account_circle_outlined,
  'folder_open': Icons.folder_open_rounded,
  'donut_large': Icons.donut_large_rounded,
  'input': Icons.input_rounded,
  'tune': Icons.tune_rounded,
  'list': Icons.format_list_bulleted_rounded,
};

Icon getIcon(String nomIcona, {Color color = Colors.deepPurple}) {
  return Icon(
    _icons[nomIcona] ?? Icons.extension_off_rounded,
    color: color,
  );
}