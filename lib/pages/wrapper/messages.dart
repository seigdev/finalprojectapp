import 'package:finalprojectapp/utils/constants.dart';
import 'package:finalprojectapp/widgets/appointment_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MessageScreen extends ConsumerStatefulWidget {
  const MessageScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MessageScreenState();
}

class _MessageScreenState extends ConsumerState<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        formLabel(context, text: 'Appointments', size: 18),
        heightTwenty,
        const AppointmentTab()
      ],
    );
  }
}
