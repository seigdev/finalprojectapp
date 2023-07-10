import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/components.dart';
import '../utils/constants.dart';

class CompletedAppointment extends ConsumerStatefulWidget {
  const CompletedAppointment({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompletedAppointmentState();
}

class _CompletedAppointmentState extends ConsumerState<CompletedAppointment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        heightTwenty,
        completedcomponent(context),
      ],
    );
  }
}
