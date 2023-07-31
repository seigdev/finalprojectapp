import 'package:finalprojectapp/pages/doctor/doctors_schedules.dart';
import 'package:finalprojectapp/utils/colors.dart';
import 'package:finalprojectapp/utils/constants.dart';
import 'package:finalprojectapp/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/state_provider.dart';

class DoctorHome extends ConsumerStatefulWidget {
  const DoctorHome({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DoctorHomeState();
}

class _DoctorHomeState extends ConsumerState<DoctorHome> {
  int noOfPatient = 0;
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var data = ref.watch(userDataProvider).value;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(child: homeheader(context, text: data?.name)),
            heightTen,
            Text(
              'You have $noOfPatient patients today',
              style: semiboldtextStyle(22, colorGrey),
            ),
            heightTwenty,
            const DoctorSchedule()
          ],
        ),
      ),
    );
  }
}
