import 'package:flutter/material.dart';
import 'package:wlstore/models/home_manager.dart';
import 'package:wlstore/models/section.dart';

class AddSectionWidget extends StatelessWidget {
  const AddSectionWidget(this.homeManager);

  final HomeManager homeManager;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        28.0,
        12.0,
        28.0,
        12.0,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                homeManager.addSection(Section(type: 'categories-list'));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 6),
              ),
              child: const Text(
                'Add categorias',
                // style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                homeManager.addSection(Section(type: 'products-list'));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 6),
              ),
              child: const Text(
                'Add produtos',
                // style: TextStyle(color: Colors.black),
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
      ),
    );
  }
}
