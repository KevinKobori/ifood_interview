import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wlstore/models/home_manager.dart';
import 'package:wlstore/models/section.dart';
import 'package:wlstore/screens/home/components/add_tile_widget.dart';
import 'package:wlstore/screens/home/components/section_header.dart';

import 'section_categories_item_tile.dart';

class SectionCategoriesList extends StatelessWidget {
  const SectionCategoriesList(this.section);

  final Section section;

  @override
  Widget build(BuildContext context) {
    final homeManager = context.watch<HomeManager>();

    return ChangeNotifierProvider.value(
      value: section,
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 18, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SectionHeader(),
            SizedBox(
              height: 68,
              child: Consumer<Section>(
                builder: (_, section, __) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      if (index < section.items.length) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(
                            index == 0 ? 26.0 : 0,
                            4,
                            index == section.items.length - 1 ? 26.0 : 0,
                            4,
                          ),
                          child:
                              SectionCategoriesItemTile(section.items[index]),
                        );
                      } else {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(index == 0 ? 26.0 : 0, 0,
                              index == section.items.length - 1 ? 26.0 : 0, 0),
                          child: AddTileWidget(),
                        );
                      }
                    },
                    separatorBuilder: (_, __) => const SizedBox(
                      width: 4,
                    ),
                    itemCount: homeManager.editing
                        ? section.items.length + 1
                        : section.items.length,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
