import 'package:flutter/material.dart';
import 'package:wlstore/models/home_manager.dart';
import 'package:wlstore/models/section.dart';

class AddSectionWidget extends StatelessWidget {
  const AddSectionWidget(this.homeManager);

  final HomeManager homeManager;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: () {
              homeManager.addSection(Section(type: 'categories-list'));
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 6),
            ),
            child: const Text(
              'Add Categories List',
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              homeManager.addSection(Section(type: 'list'));
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 6),
            ),
            child: const Text(
              'Add Products List',
            ),
          ),
        ),

        // Expanded(
        //   child: TextButton(
        //     onPressed: () {
        //       homeManager.addSection(Section(type: 'Staggered'));
        //     },
        //     style: ElevatedButton.styleFrom(
        //       padding: const EdgeInsets.symmetric(horizontal: 6),
        //     ),
        //     child: const Text(
        //       'Adicionar Grade',
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
