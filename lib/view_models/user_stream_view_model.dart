// lib/view_models/user_stream_view_model.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userAgeStreamProvider = StreamProvider<int>((ref) {
  return Stream<int>.periodic(Duration(seconds: 1), (count) => count).take(100);
});
