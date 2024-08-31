// lib/views/user_stream_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_mvvm_application/providers/all_providers.dart';

class UserStreamScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stream = ref.watch(userAgeStreamProvider);

    return Scaffold(
      appBar: AppBar(title: Text('User Stream')),
      body: Center(
        child: stream.when(
          data: (data) => Text('Current Age: $data'),
          loading: () => CircularProgressIndicator(),
          error: (error, stack) => Text('Error: $error'),
        ),
      ),
    );
  }
}
