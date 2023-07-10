import 'package:finalprojectapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/tabs/gf_tabbar_view.dart';
import 'package:getwidget/components/tabs/gf_tabs.dart';

import 'cancelled_appointment.dart';
import 'completed_appointment.dart';
import 'upcoming_appointment.dart';

class AppointmentTab extends StatefulWidget {
  const AppointmentTab({super.key});

  @override
  State<AppointmentTab> createState() => _AppointmentTabState();
}

class _AppointmentTabState extends State<AppointmentTab>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GFTabs(
      controller: tabController,
      length: 3,
      tabBarHeight: 50,
      tabBarColor: scaffoldColor,
      unselectedLabelColor: colorBlack,
      labelColor: primaryColor,
      indicatorColor: primaryColor,
      tabs: const [
        Tab(
          child: Text("Upcoming"),
        ),
        Tab(
          child: Text("Completed"),
        ),
        Tab(
          child: Text("Cancelled"),
        ),
      ],
      tabBarView: GFTabBarView(
        controller: tabController,
        children: const [
          UpcomingAppointment(),
          CompletedAppointment(),
          CancelledAppointment()
        ],
      ),
    );
  }
}
