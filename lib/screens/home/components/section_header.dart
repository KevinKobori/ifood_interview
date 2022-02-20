import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wlstore/common/custom_icon_button.dart';
import 'package:wlstore/models/home_manager.dart';
import 'package:wlstore/models/section.dart';

class SectionHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeManager = context.watch<HomeManager>();
    final section = context.watch<Section>();

    if (homeManager.editing) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(
          32,
          0,
          32,
          0,
        ),
        child: Column(
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
                    style: Theme.of(context).textTheme.bodyText1,
                    onChanged: (text) => section.name = text,
                  ),
                ),
                CustomIconButton(
                  iconData: Icons.remove,
                  color: Colors.red,
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
        ),
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
        ),
      );
    }
  }
}
