import 'package:flutter/material.dart';
import 'package:wlstore/common/custom_icon_button.dart';
import 'package:wlstore/models/home_manager.dart';
import 'package:wlstore/models/section.dart';
import 'package:provider/provider.dart';

class SectionHeader extends StatelessWidget {
  // Color txColor = color.computeLuminance() < 0.5 ? Colors.white : Colors.black;
  Color _bgColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    final homeManager = context.watch<HomeManager>();
    final section = context.watch<Section>();

    if (homeManager.editing) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  initialValue: section.name,
                  decoration: const InputDecoration(
                      hintText: 'Título',
                      isDense: true,
                      border: InputBorder.none),
                  style: const TextStyle(
                    // color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                  onChanged: (text) => section.name = text,
                ),
              ),
              CustomIconButton(
                iconData: Icons.remove,
                // color: Colors.white,
                onTap: () {
                  homeManager.removeSection(section);
                },
              ),
            ],
          ),
          if (section.error != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                section.error,
                style: const TextStyle(color: Colors.red),
              ),
            )
        ],
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 8,
        ),
        child: Text(
          section.name ?? '',
          style: Theme.of(context).textTheme.bodyText1,
          // style: const TextStyle(
          //   // color: Colors.white,
          //   fontWeight: FontWeight.w700,
          //   fontSize: 18,
          // ),
        ),
      );
    }
  }
}
