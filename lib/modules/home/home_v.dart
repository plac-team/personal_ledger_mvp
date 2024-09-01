import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_ledger_mvp/core/shared/money_type.dart';
import 'package:personal_ledger_mvp/entity/income/income_entity.dart';
import 'package:personal_ledger_mvp/modules/home/home_p.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/shared/dialog/common_dialog.dart';
import '../../core/shared/style/text_field_style.dart';
import '../../entity/expense/expense_entity.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  late TextEditingController _dateController;
  late TextEditingController _priceController;
  late TextEditingController _categoryController;
  MoneyType moneyType = MoneyType.INCOME;
  String result = 'waiting...';

  @override
  void initState() {
    _dateController = TextEditingController(text: DateTime.now().toString());
    _priceController = TextEditingController();
    _categoryController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.colors.primary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [Text('타입: $moneyType')]),
            TextField(
              controller: _dateController,
              cursorColor: TextFieldStyle.INPUT_COLOR,
              decoration:
                  TextFieldStyle.INPUT_DECORATION.copyWith(hintText: 'date'),
              enabled: false,
            ),
            TextField(
              controller: _priceController,
              cursorColor: TextFieldStyle.INPUT_COLOR,
              decoration:
                  TextFieldStyle.INPUT_DECORATION.copyWith(hintText: 'price'),
            ),
            TextField(
              controller: _categoryController,
              cursorColor: TextFieldStyle.INPUT_COLOR,
              decoration: TextFieldStyle.INPUT_DECORATION
                  .copyWith(hintText: 'category'),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () async {
                    setState(() {
                      result = 'type: $moneyType\n'
                          'date: ${_dateController.text}\n'
                          'price: ${_priceController.text}\n'
                          'category: ${_categoryController.text}';
                    });

                    // final date = DateTime.tryParse(_dateController.text);
                    final date = DateTime.now();
                    final price = double.tryParse(_priceController.text);

                    if (price == null) {
                      return showResultDialog(
                          context: context,
                          type: moneyType,
                          result: result,
                          isSuccess: false);
                    }

                    final money = (moneyType == MoneyType.INCOME)
                        ? DailyIncomeEntity(
                            date: date,
                            price: price,
                            category: _categoryController.text)
                        : DailyExpenseEntity(
                            date: date,
                            price: price,
                            category: _categoryController.text);

                    final isSend = await ref
                        .read(homePresenterProvider.notifier)
                        .upsertMoney(type: moneyType, money: money);

                    showResultDialog(
                      // ignore: use_build_context_synchronously
                      context: context,
                      type: moneyType,
                      result: result,
                      isSuccess: isSend,
                    );
                  },
                  icon: const Text('[[SEND]]'),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      moneyType = moneyType == MoneyType.INCOME
                          ? MoneyType.EXPENSE
                          : MoneyType.INCOME;
                    });
                  },
                  icon: const Text('[[TYPE]]'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
