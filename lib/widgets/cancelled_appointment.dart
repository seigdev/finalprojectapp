import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/colors.dart';
import '../utils/text_style.dart';

class CancelledAppointment extends ConsumerStatefulWidget {
  const CancelledAppointment({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CancelledAppointmentState();
}

class _CancelledAppointmentState extends ConsumerState<CancelledAppointment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200),
      child: Center(
        child: Text(
          'You don\'t have cancelled appointments.',
          style: mediumtextStyle(14, colorGrey),
        ),
      ),
    );
  }
}
