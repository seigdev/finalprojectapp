import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/colors.dart';
import '../utils/text_style.dart';

class UpcomingAppointment extends ConsumerStatefulWidget {
  const UpcomingAppointment({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UpcomingAppointmentState();
}

class _UpcomingAppointmentState extends ConsumerState<UpcomingAppointment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200),
      child: Center(
        child: Text(
          'You haven\'t scheduled any appointment.',
          style: mediumtextStyle(14, colorGrey),
        ),
      ),
    );
  }
}
