import 'package:finalprojectapp/utils/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../services/data_provider.dart';
import '../../services/state_provider.dart';
import '../../utils/colors.dart';
import '../../utils/constants.dart';

class DoctorsNearby extends ConsumerStatefulWidget {
  const DoctorsNearby({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DoctorsNearbyState();
}

class _DoctorsNearbyState extends ConsumerState<DoctorsNearby> {
  // loading state
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    var data = ref.watch(getDoctorNearbyProvider);
    loading = ref.watch(isLoadingProvider);
    data.value?.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    //format date & time
    final dateFormat = DateFormat('MMM dd, y'); // 'MMMM dd, y'
    final timeFormat = DateFormat('h:mm a'); // 'MMMM dd, y'

    return data.when(
      data: (data) {
        var results = data;
        if (results.isEmpty) {
          return isEmptyVisitors;
        }

        return SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: results.length > 5 ? 5 : results.length,
            itemBuilder: (_, i) {
              final visitor = results[i];
              return InkWell(
                onTap: () {},
                child: nearbydcotorcontainer(
                  context,
                  name: visitor.name,
                  date: dateFormat.format(visitor.createdAt).toString(),
                  time: timeFormat.format(visitor.createdAt).toString(),
                  speciality: visitor.type,
                  rating: visitor.location,
                ),
              );
            },
          ),
        );
      },
      error: (error, stackTrace) =>
          displayErrorMotionToast(context, "An error occured."),
      loading: () => loadingWidget(primaryColor),
    );
  }
}
