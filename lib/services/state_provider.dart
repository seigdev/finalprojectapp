import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api_service.dart';

var isLoadingProvider = StateProvider((ref) {
  return false;
});

final userDataProvider =
    FutureProvider((ref) => ref.watch(dataProvider).userData);
