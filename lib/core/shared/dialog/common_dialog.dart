import 'package:flutter/material.dart';
import 'package:personal_ledger_mvp/core/shared/money_type.dart';

void showResultDialog({
  required BuildContext context,
  required MoneyType type,
  required String result,
  required bool isSuccess,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: isSuccess ? Colors.green : Colors.red,
        title: Text('Result'),
        content:
            Text('$type\n${isSuccess ? 'success' : 'fail'} to send\n\n$result'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}
