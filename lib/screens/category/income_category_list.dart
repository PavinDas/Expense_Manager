import 'package:flutter/material.dart';

class IncomeCategoryList extends StatelessWidget {
  const IncomeCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return Card(
          
          elevation: 0,
          child: ListTile(
            title: Text('Income category $index'),
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
