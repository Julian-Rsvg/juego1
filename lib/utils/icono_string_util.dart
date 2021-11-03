import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'suma':Icons.add_box,
  'resta':Icons.remove_circle_outline_rounded,
  'multiplicacion': Icons.light_mode_outlined,
  'divicion': Icons.drive_file_rename_outline_rounded,
  'area': Icons.calculate_outlined,

};

Icon getIcon(String nombreIcon){
  return Icon(_icons[nombreIcon], color: Colors.pink);
}



