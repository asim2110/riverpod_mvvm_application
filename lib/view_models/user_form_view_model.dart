// lib/view_models/user_form_view_model.dart

import '../models/user_model.dart';

class UserFormViewModel {
  Future<User> submitForm(String name, int age) async {
    // Simulate network or database operation
    await Future.delayed(Duration(seconds: 2));
    return User(name: name, age: age);
  }
}
