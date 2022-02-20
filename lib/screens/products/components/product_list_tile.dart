import 'package:flutter/material.dart';
import 'package:wlstore/models/product.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile(this.productModel, this.categoryId);

  final Product productModel;
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/product',
          arguments: productModel,
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 4),
        child: Container(
          height: 100,
          padding: const EdgeInsets.all(6),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(productModel.images.first),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Spacer(),
                    Text(
                      productModel.name ,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      // style: const TextStyle(
                      //   fontSize: 16,
                      //   // fontWeight: FontWeight.w600,
                      // ),
                    ),
                    Text(
                      productModel.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.overline,
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        'A partir de',
                        style: TextStyle(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.7),
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Text(
                      'R\$ ${productModel.basePrice.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    if (!productModel.hasStock)
                      const Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Text(
                          'Sem estoque',
                          style: TextStyle(color: Colors.red, fontSize: 10),
                        ),
                      ),
                    const Spacer(),
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
