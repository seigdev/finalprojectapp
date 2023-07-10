import 'package:finalprojectapp/screens/patients/doctors_nearby.dart';
import 'package:finalprojectapp/screens/patients/patients_schedules.dart';
import 'package:finalprojectapp/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          heightForty,
          homeheader(
            context,
            text: data?.name,
          ),
          heightTwenty,
          InkWell(onTap: () {}, child: Text(data?.location ?? 'location')),
          heightFifty,
          componentheader(context, maintitle: 'Doctors nearby'),
          heightTwenty,
          const DoctorsNearby(),
          heightFifty,
          componentheader(context, maintitle: 'Upcoming schedules'),
          heightTwenty,
          const PatientSchedule(),
        ],
      ),
    );
  }
}
