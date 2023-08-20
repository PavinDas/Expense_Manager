import 'package:flutter/material.dart';

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return const Card(
          elevation: 0,
          child: ListTile(
            leading: CircleAvatar(
              child: Text(
                '12\nDec',
                textAlign: TextAlign.center,
              ),
              radius: 50,
            ),
            title: Text('Rs 12000'),
            subtitle: Text('Travel'),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 5,
        );
      },
      itemCount: 10,
    );
  }
}
