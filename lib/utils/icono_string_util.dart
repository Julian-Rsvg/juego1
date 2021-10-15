import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert':Icons.add_alert,
  'accessibility':Icons.accessibility,
  'sort_rounded': Icons.sort_rounded,
  
};

Icon getIcon(String nombreIcon){
  return Icon(_icons[nombreIcon], color: Colors.blue);
}



