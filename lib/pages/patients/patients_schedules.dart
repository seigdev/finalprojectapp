import 'package:finalprojectapp/utils/colors.dart';
import 'package:finalprojectapp/utils/text_style.dart';
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
    return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Center(
        child: Text(
          'no upcoming schedule at the moment.',
          style: mediumtextStyle(14, colorGrey),
        ),
      ),
    );
  }
}
