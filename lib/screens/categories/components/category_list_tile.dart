import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:wlstore/models/category_manager.dart';
import 'package:wlstore/models/category_model.dart';

class CategoryListTile extends StatelessWidget {
  const CategoryListTile(this.categoryModel);

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CategoryManager>().setCategory(category: categoryModel);
        Navigator.of(context).pushNamed('/products');//, arguments: categoryModel);
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        child: Container(
          height: 100,
          padding: const EdgeInsets.all(8),
          child: Row(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: Image.network(categoryModel.images.first),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      categoryModel.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        'A partir de',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Text(
                      'R\$ ${categoryModel.basePrice.toStringAsFixed(2)}',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Theme.of(context).primaryColor),
                    ),
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
