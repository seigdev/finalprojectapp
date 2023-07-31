// ignore_for_file: unused_result

import 'package:finalprojectapp/pages/patients/doctors_nearby.dart';
import 'package:finalprojectapp/pages/patients/patients_schedules.dart';
import 'package:finalprojectapp/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/data_provider.dart';
import '../../services/state_provider.dart';

class PatientHome extends ConsumerStatefulWidget {
  const PatientHome({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PatientHomeState();
}

class _PatientHomeState extends ConsumerState<PatientHome> {
  @override
  Widget build(BuildContext context) {
    var data = ref.watch(userDataProvider).value;
    ref.watch(isLoadingProvider.notifier).state == false;
    return RefreshIndicator(
      onRefresh: () async {
        ref.refresh(getDoctorNearbyProvider);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Expanded(
          child: ListView(
            children: [
              homeheader(
                context,
                text: data?.name,
                location: data?.location,
              ),
              heightFifty,
              componentheader(context, maintitle: 'Doctors nearby'),
              heightTwenty,
              const DoctorsNearby(),
              heightFifty,
              heightTwenty,
              heightTwenty,
              componentheader(context, maintitle: 'Upcoming schedules'),
              heightTwenty,
              const PatientSchedule(),
            ],
          ),
        ),
      ),
    );
  }
}
