import 'package:finalprojectapp/utils/components.dart';
import 'package:finalprojectapp/utils/constants.dart';
import 'package:finalprojectapp/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getwidget/components/tabs/gf_tabbar_view.dart';
import 'package:getwidget/components/tabs/gf_tabs.dart';
import 'package:intl/intl.dart';

import '../../utils/colors.dart';

class DoctorSchedule extends ConsumerStatefulWidget {
  const DoctorSchedule({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DoctorScheduleState();
}

class _DoctorScheduleState extends ConsumerState<DoctorSchedule>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: dates.length, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  List dates = [
    DateTime.now(),
    DateTime.now().add(const Duration(days: 1)),
    DateTime.now().add(const Duration(days: 2)),
    DateTime.now().add(const Duration(days: 3)),
    DateTime.now().add(const Duration(days: 4)),
    DateTime.now().add(const Duration(days: 5)),
    // Add more dates as needed
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> tabWidgets = dates.map((date) {
      String formattedDate = DateFormat('d').format(date);
      String formattedDay = DateFormat('E').format(date);
      return Tab(
        height: 50,
        child: Column(
          children: [
            Text(formattedDate),
            heightTen,
            Text(formattedDay),
          ],
        ),
      );
    }).toList();

    List<Widget> tabContentWidgets = dates.map((date) {
      return Column(
        children: [
          heightTen,
          Center(
            child: Text(
              "Content for ${DateFormat('MMM dd').format(date)}",
              style: mediumtextStyle(14, colorGrey),
            ),
          ),
          heightThirty,
          doctorupcomingSchedule(context,
              patient: 'Moyo', time: '08:00', age: '20', complaint: 'Headache')
        ],
      );
    }).toList();

    return GFTabs(
      controller: tabController,
      length: dates.length,
      tabBarHeight: 100,
      tabBarColor: scaffoldColor,
      unselectedLabelColor: colorBlack,
      labelColor: colorWhite,
      labelStyle: boldtextStyle(),
      unselectedLabelStyle: mediumtextStyle(),
      indicatorPadding: const EdgeInsets.all(10),
      indicator: ShapeDecoration(
        color: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      tabs: tabWidgets,
      tabBarView: GFTabBarView(
        controller: tabController,
        children: tabContentWidgets,
      ),
    );
  }
}
