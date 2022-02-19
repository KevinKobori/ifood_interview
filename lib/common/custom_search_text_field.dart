import 'package:flutter/material.dart';

import 'custom_icon_button_2.dart';

Widget customSearchTextField(
    {BuildContext context, Function(String) onChanged, String hintText}) {
  return Card(
    // elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
    // height: 38,
    // decoration: BoxDecoration(
    //   color: Theme.of(context).canvasColor, // TODO DARK MODE Colors.grey[900]
    //   borderRadius: BorderRadius.circular(10),
    // ),
    child: TextField(
      onChanged: (value) => onChanged(value),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          top: 4,
          left: 16,
          // right: 0,
          // bottom: 4,
        ),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[400]),
        suffixIcon: Container(
          padding: const EdgeInsets.fromLTRB(14,2,0,2),
          child: Card(
            // color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: AspectRatio(aspectRatio: 1, child: Icon(Icons.search, size: 18)),
            ),
          ),
        ),
        // suffixIcon: Container(
        //   height: 22,
        //   width: 22,
        //   margin: EdgeInsets.all(4.0),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(100),
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.black.withOpacity(0.2),
        //         blurRadius: 4,
        //         offset: const Offset(0, 4),
        //       ),
        //     ],
        //   ),
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       Icons.search,
        //       size: 12,
        //     ),
        //   ),
        // ),
        // prefixIcon: const Icon(Icons.search),
      ),
    ),
  );
}
