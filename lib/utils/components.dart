import 'package:finalprojectapp/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'colors.dart';
import 'constants.dart';

// componet to display nearby doctors
Widget nearbydcotorcontainer(BuildContext context,
        {String? name,
        String? speciality,
        String? rating,
        String? date,
        String? time}) =>
    Container(
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    widthTen,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name ?? 'Lorem Ipsum',
                          style: semiboldtextStyle(16),
                        ),
                        Text(
                          speciality ?? 'Lorem Ipsum',
                          style: thintextStyle(14),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 100),
                Text(
                  "${rating ?? '0.0'}★",
                  style: mediumtextStyle(12, const Color(0xFFFFB84F)),
                )
              ],
            ),
            heightTwenty,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: colorGreyLight.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(Iconsax.calendar, size: 14),
                        widthFive,
                        Text(
                          date ?? '16 Feb 2023',
                          style: mediumtextStyle(12),
                        ),
                      ],
                    ),
                  ),
                ),
                widthfifteen,
                Container(
                  decoration: BoxDecoration(
                    color: colorGreyLight.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(Iconsax.clock, size: 14),
                        widthFive,
                        Text(
                          time ?? '12pm-3pm',
                          style: mediumtextStyle(12),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );

Widget upcomingdoctorscomponent(
  BuildContext context, {
  String? name,
  String? speciality,
  String? date,
  void Function()? onTap,
}) =>
    Container(
      decoration: ShapeDecoration(
        color: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: ShapeDecoration(
                        color: colorWhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    widthTen,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name ?? 'Lorem Ipsum',
                          style: semiboldtextStyle(16, colorWhite),
                        ),
                        Text(
                          speciality ?? 'Lorem Ipsum',
                          style: mediumtextStyle(14, colorWhite),
                        ),
                      ],
                    ),
                  ],
                ),
                InkWell(
                  onTap: onTap,
                  child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Join Call'),
                      )),
                ),
              ],
            ),
            heightTwenty,
            Container(
              width: 300,
              height: 55,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: ShapeDecoration(
                color: colorWhite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  date ?? 'Loren Ipsum',
                ),
              ),
            ),
          ],
        ),
      ),
    );

Widget upcomingcomponent(
  BuildContext context, {
  String? name,
  String? speciality,
  void Function()? onCallTap,
  void Function()? onCancelTap,
}) =>
    Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const ShapeDecoration(
                  color: primaryColor,
                  shape: OvalBorder(),
                ),
              ),
              widthTen,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name ?? 'Lorem Ipsum',
                    style: semiboldtextStyle(16),
                  ),
                  Text(
                    speciality ?? 'Lorem Ipsum',
                    style: mediumtextStyle(14),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: onCallTap,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: ShapeDecoration(
                    color: colorGreyLight.withOpacity(0.5),
                    shape: const OvalBorder(),
                  ),
                  child: const Icon(
                    Iconsax.call,
                    color: primaryColor,
                    size: 22,
                  ),
                ),
              ),
              widthTen,
              InkWell(
                onTap: onCancelTap,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: ShapeDecoration(
                    color: colorGreyLight.withOpacity(0.5),
                    shape: const OvalBorder(),
                  ),
                  child: const Icon(
                    CupertinoIcons.multiply,
                    color: errorColor,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

Widget completedcomponent(
  BuildContext context, {
  String? name,
  String? speciality,
  void Function()? onTap,
}) =>
    Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const ShapeDecoration(
                  color: primaryColor,
                  shape: OvalBorder(),
                ),
              ),
              widthTen,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name ?? 'Lorem Ipsum',
                    style: semiboldtextStyle(16),
                  ),
                  Text(
                    speciality ?? 'Lorem Ipsum',
                    style: mediumtextStyle(14),
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              'reschedule',
              style: semiboldtextStyle(14, primaryColor),
            ),
          ),
        ],
      ),
    );

Widget cancelledcomponent(
  BuildContext context, {
  String? name,
  String? speciality,
  void Function()? onTap,
}) =>
    Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const ShapeDecoration(
                  color: primaryColor,
                  shape: OvalBorder(),
                ),
              ),
              widthTen,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name ?? 'Lorem Ipsum',
                    style: semiboldtextStyle(16),
                  ),
                  Text(
                    speciality ?? 'Lorem Ipsum',
                    style: mediumtextStyle(14),
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              'reschedule',
              style: semiboldtextStyle(14, primaryColor),
            ),
          ),
        ],
      ),
    );

Widget doctorupcomingSchedule(
  BuildContext context, {
  String? time,
  String? patient,
  String? age,
  String? complaint,
  String? duration,
  bool? value,
  void Function(bool?)? onChanged,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(time ?? '08:00', style: regulartextStyle(18)),
        Container(
          decoration: ShapeDecoration(
            color: colorGrey.withOpacity(0.07),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const ShapeDecoration(
                              color: primaryColor, shape: OvalBorder()),
                        ),
                        widthTen,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              patient ?? 'Lorem Ipsum',
                              style: boldtextStyle(),
                            ),
                            Text('$age yo | $complaint',
                                style: mediumtextStyle(14, colorGrey)),
                            heightTen,
                            Text('1h', style: thintextStyle()),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 80),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: primaryColor),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
