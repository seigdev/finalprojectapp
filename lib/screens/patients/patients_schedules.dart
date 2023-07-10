import 'package:finalprojectapp/utils/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PatientSchedule extends ConsumerStatefulWidget {
  const PatientSchedule({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientScheduleState();
}

class _PatientScheduleState extends ConsumerState<PatientSchedule> {
  @override
  Widget build(BuildContext context) {
    return upcomingdoctorscomponent(context);
  }
}
