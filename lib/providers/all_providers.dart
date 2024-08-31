// lib/providers/app_providers.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_models/user_form_view_model.dart';

// Provider for UserFormViewModel
final userFormViewModelProvider =
    Provider<UserFormViewModel>((ref) => UserFormViewModel());

// StateProviders for user name and age
final userNameProvider = StateProvider<String>((ref) => "");
final userAgeProvider = StateProvider<int>((ref) => 0);

// StreamProvider for user age stream
final userAgeStreamProvider = StreamProvider<int>((ref) {
  return Stream<int>.periodic(Duration(seconds: 1), (count) => count).take(100);
});
