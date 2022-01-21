import 'package:flutter/material.dart';
import 'package:lojavirtual/models/order.dart';

class CancelOrderDialog extends StatefulWidget {
  const CancelOrderDialog(this.order);

  final Order order;

  @override
  _CancelOrderDialogState createState() => _CancelOrderDialogState();
}

class _CancelOrderDialogState extends State<CancelOrderDialog> {
  bool loading = false;
  String error;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: AlertDialog(
        title: Text('Cancelar ${widget.order.formattedId}?'),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(loading
                ? 'Cancelando...'
                : 'Esta ação não poderá ser defeita!'),
            if (error != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  error,
                  style: const TextStyle(color: Colors.red),
                ),
              )
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: !loading
                ? () {
                    Navigator.of(context).pop();
                  }
                : null,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 6),
            ),
            child: Text(
              'voltar',
              style: TextStyle(
                color: Colors.blue[700],
              ),
            ),
          ),
          TextButton(
            onPressed: !loading
                ? () async {
                    setState(() {
                      loading = true;
                    });
                    try {
                      await widget.order.cancel();
                      Navigator.of(context).pop();
                    } catch (e) {
                      setState(() {
                        loading = false;
                        error = e.toString();
                      });
                    }
                  }
                : null,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 6),
            ),
            child: Text(
              'Cancelar Pedido',
              style: TextStyle(
                color: Colors.red[700],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
