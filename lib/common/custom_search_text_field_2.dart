import 'package:flutter/material.dart';

Widget customSearchTextField2({BuildContext context, Function(String) onChanged, String hintText}) {
  return Container(
    height: 38,
    decoration: BoxDecoration(
      color: Theme.of(context).canvasColor, // TODO DARK MODE Colors.grey[900]
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextField(
      onChanged: (value) => onChanged(value),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[400]),
        prefixIcon: const Icon(Icons.search),
      ),
    ),
  );
}
