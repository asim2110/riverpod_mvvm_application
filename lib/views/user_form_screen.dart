import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/all_providers.dart';

class UserFormScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = TextEditingController();
    final ageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('User Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name')),
            TextField(
                controller: ageController,
                decoration: InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final name = nameController.text;
                final age = int.tryParse(ageController.text) ?? 0;
                final user = await ref
                    .read(userFormViewModelProvider)
                    .submitForm(name, age);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('User: ${user.name}, Age: ${user.age}')));
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
