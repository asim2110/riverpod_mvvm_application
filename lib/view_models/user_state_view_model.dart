// lib/view_models/user_state_view_model.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userNameProvider = StateProvider<String>((ref) => "");
final userAgeProvider = StateProvider<int>((ref) => 0);
