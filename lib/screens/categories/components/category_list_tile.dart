import 'package:flutter/material.dart';
import 'package:wlstore/models/category_manager.dart';
import 'package:wlstore/models/category_model.dart';
import 'package:provider/src/provider.dart';
import 'package:wlstore/utils/styles/app_color_scheme.dart';

class CategoryListTile extends StatelessWidget {
  const CategoryListTile(this.categoryModel);

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CategoryManager>().setCategory(category: categoryModel);
        Navigator.of(context).pushNamed('/products', arguments: categoryModel);
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 4),
        child: Container(
          height: 100,
          padding: const EdgeInsets.all(8),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(categoryModel.images.first),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // const Spacer(),
                    Text(
                      categoryModel.name + 'asdasdasdasd asd asd asd as',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      // style: const TextStyle(
                      //   fontSize: 16,
                      //   // fontWeight: FontWeight.w600,
                      // ),
                    ),
                    Text(
                      categoryModel.description + 'asdasdasdasd asd asd asd as',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.overline,
                    ),
                    const Spacer(),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 4),
                    //   child: Text(
                    //     'A partir de',
                    //     style: TextStyle(
                    //       color:
                    //           Theme.of(context).primaryColor.withOpacity(0.7),
                    //       fontSize: 10,
                    //     ),
                    //   ),
                    // ),
                    // Text(
                    //   'R\$ ${categoryModel.basePrice.toStringAsFixed(2)}',
                    //   style: TextStyle(
                    //     fontSize: 13,
                    //     fontWeight: FontWeight.w800,
                    //     color: Theme.of(context).primaryColor,
                    //   ),
                    // ),
                    // const Spacer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
