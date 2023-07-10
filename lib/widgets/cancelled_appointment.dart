import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/components.dart';
import '../utils/constants.dart';

class CancelledAppointment extends ConsumerStatefulWidget {
  const CancelledAppointment({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CancelledAppointmentState();
}

class _CancelledAppointmentState extends ConsumerState<CancelledAppointment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        heightFifty,
        // cancelledcomponent(context),
        const Center(child: Text('You haven\'t cancelled any appointment yet.'))
      ],
    );
  }
}
