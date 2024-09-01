import 'package:flutter/material.dart' hide Colors;

import '../../theme/color/colors.dart';
import '../type/money_type.dart';

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
        backgroundColor: isSuccess ? Colors.pass : Colors.error,
        title: const Text('Result'),
        content: Text('$type\n${isSuccess ? 'success' : 'fail'} to send\n\n$result'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}
