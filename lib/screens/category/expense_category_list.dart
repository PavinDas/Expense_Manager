import 'package:flutter/material.dart';

class ExpenseCategoryList extends StatelessWidget {
  const ExpenseCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return Card(
          elevation: 0,
          child: ListTile(
            title: Text('Expense category $index'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 5,
        );
      },
      itemCount: 100,
    );
  }
}
