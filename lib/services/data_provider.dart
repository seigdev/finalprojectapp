// resident login
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api_service.dart';

// user login
loginProvider(context, email, password) => FutureProvider((ref) {
      ref.watch(dataProvider).userLogin(context, email, password);
    });

// user register
registerProvider(context, name, email, phone, type, location, password) =>
    FutureProvider((ref) => ref
        .watch(dataProvider)
        .userRegister(context, name, email, phone, type, location, password));

// get doctor's nearby
final getDoctorNearbyProvider =
    FutureProvider((ref) => ref.watch(dataProvider).getDoctorNearby());
