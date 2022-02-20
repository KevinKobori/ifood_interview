import 'package:flutter/material.dart';
import 'package:wlstore/models/product.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile(this.product, this.categoryId);

  final Product product;
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/product',
          arguments: product,
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
                  child: Image.network(product.images.first),
                ),
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
                      product.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
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
                      'R\$ ${product.basePrice.toStringAsFixed(2)}',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Theme.of(context).primaryColor),
                    ),
                    if (!product.hasStock)
                      const Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Text(
                          'Sem estoque',
                          style: TextStyle(color: Colors.red, fontSize: 10),
                        ),
                      )
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
