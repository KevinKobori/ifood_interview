import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:wlstore/models/home_manager.dart';
import 'package:wlstore/models/product_manager.dart';
import 'package:wlstore/models/section.dart';
import 'package:wlstore/models/section_item.dart';

class SectionCategoriesItemTile extends StatelessWidget {
  const SectionCategoriesItemTile(this.item);

  final SectionItem item;

  @override
  Widget build(BuildContext context) {
    final homeManager = context.watch<HomeManager>();

    return GestureDetector(
      onTap: () {
        if (item.product != null) {
          final product =
              context.read<ProductManager>().findProductById(item.product);
          if (product != null) {
            Navigator.of(context).pushNamed(
              '/product',
              arguments: product,
            );
          }
        }
      },
      onLongPress: homeManager.editing
          ? () {
              showDialog(
                context: context,
                builder: (_) {
                  final product = context
                      .read<ProductManager>()
                      .findCategoryProductById(item.product);
                  return AlertDialog(
                    title: const Text('Edit Item'),
                    content: product != null
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 8,
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Image.network(product.images.first),
                              title: Text(
                                product.name,
                              ),
                              subtitle: Text(
                                  'R\$ ${product.basePrice.toStringAsFixed(2)}'),
                            ),
                          )
                        : null,
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          context.read<Section>().removeItem(item);
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                        ),
                        child: const Text(
                          'Delete',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () async {
                      //     if (product != null) {
                      //       item.product = null;
                      //     } else {
                      //       final Product product =
                      //           await Navigator.of(context)
                      //               .pushNamed('/select_product') as Product;
                      //       item.product = product?.id;
                      //     }
                      //     Navigator.of(context).pop();
                      //   },
                      //   style: ElevatedButton.styleFrom(
                      //     padding: const EdgeInsets.symmetric(horizontal: 6),
                      //   ),
                      //   child: Text(product != null
                      //       ? 'Unlink Product'
                      //       : 'Link Product'),
                      // ),
                    ],
                  );
                },
              );
            }
          : null,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 2.0,
            vertical: 2.0,
          ),
          child: Row(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: item.image is String
                        ? FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: item.image as String,
                            fit: BoxFit.cover,
                          )
                        : Image.file(
                            item.image as File,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Text(
                'Category',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(width: 12),
            ],
          ),
        ),
      ),
    );
  }
}
