import 'package:flutter/material.dart';

Widget customIconButton(
  EdgeInsets margin,
  IconData icon,
  Function() function,
) {
  return Container(
    height: 40,
    width: 40,
    margin: margin,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(100),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 4,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: IconButton(
      onPressed: function,
      icon: Icon(
        icon,
        color: Colors.black,
      ),
    ),
  );
}
