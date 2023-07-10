import 'package:finalprojectapp/utils/components.dart';
import 'package:finalprojectapp/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpcomingAppointment extends ConsumerStatefulWidget {
  const UpcomingAppointment({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UpcomingAppointmentState();
}

class _UpcomingAppointmentState extends ConsumerState<UpcomingAppointment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        heightTwenty,
        upcomingcomponent(context),
      ],
    );
  }
}
