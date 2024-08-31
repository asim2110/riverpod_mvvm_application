// lib/views/user_state_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_models/user_state_view_model.dart';

class UserStateScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(userNameProvider);
    final age = ref.watch(userAgeProvider);

    return Scaffold(
      appBar: AppBar(title: Text('User State')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) =>
                  ref.read(userNameProvider.notifier).state = value,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              onChanged: (value) => ref.read(userAgeProvider.notifier).state =
                  int.tryParse(value) ?? 0,
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Text('Name: $name, Age: $age'),
          ],
        ),
      ),
    );
  }
}
