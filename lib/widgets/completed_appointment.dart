import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/colors.dart';
import '../utils/text_style.dart';

class CompletedAppointment extends ConsumerStatefulWidget {
  const CompletedAppointment({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompletedAppointmentState();
}

class _CompletedAppointmentState extends ConsumerState<CompletedAppointment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200),
      child: Center(
        child: Text(
          'You don\'t have completed appointments.',
          style: mediumtextStyle(14, colorGrey),
        ),
      ),
    );
  }
}
