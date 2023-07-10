import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getwidget/components/dropdown/gf_dropdown.dart';

import '../../utils/button.dart';
import '../../utils/colors.dart';
import '../../utils/constants.dart';
import '../../utils/input_fields.dart';
import '../../utils/navigation.dart';
import '../../utils/text_style.dart';
import '../../wrapper.dart';

class DoctorForm extends ConsumerStatefulWidget {
  const DoctorForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DoctorFormState();
}

class _DoctorFormState extends ConsumerState<DoctorForm> {
  final TextEditingController fullnamecontroller = TextEditingController();
  final TextEditingController specialisationcontroller =
      TextEditingController();
  final TextEditingController aboutcontroller = TextEditingController();
  String? dropdown;
  var items = ['10+', '20+', '30+', '40+', '50+'];
  var items2 = ['1 - 5 yrs', '6 - 10 yrs', '11 - 15 yrs', '15+ yrs'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            closeIconButton(context),
            Center(
              child: Text(
                'Profession Details',
                style: semiboldtextStyle(20, colorBlack),
              ),
            ),
            heightForty,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  formLabel(context, text: 'Specialisation'),
                  heightTen,
                  textInput(
                    context,
                    specialisationcontroller,
                    inputType: TextInputType.text,
                    hintText: 'eg.  Dentistry',
                  ),
                  heightTwenty,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          formLabel(context, text: 'No. of Patients'),
                          heightTen,
                          SizedBox(
                            height: 45,
                            child: DropdownButtonHideUnderline(
                              child: GFDropdown(
                                borderRadius: BorderRadius.circular(5),
                                dropdownButtonColor:
                                    colorGreyLight.withOpacity(0.5),
                                value: dropdown,
                                onChanged: (newValue) {
                                  setState(() {
                                    dropdown = newValue;
                                  });
                                },
                                items: items
                                    .map((value) => DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        ))
                                    .toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          formLabel(context, text: 'Years of Experience'),
                          heightTen,
                          SizedBox(
                            height: 45,
                            child: DropdownButtonHideUnderline(
                              child: GFDropdown(
                                borderRadius: BorderRadius.circular(5),
                                dropdownButtonColor:
                                    colorGreyLight.withOpacity(0.5),
                                value: dropdown,
                                onChanged: (newValue) {
                                  setState(() {
                                    dropdown = newValue;
                                  });
                                },
                                items: items2
                                    .map((value) => DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        ))
                                    .toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  heightTwenty,
                  formLabel(context, text: 'About'),
                  heightTen,
                  textInput(
                    context,
                    aboutcontroller,
                    inputType: TextInputType.multiline,
                    hintText: 'Tell us about yourself',
                    maxLine: 5,
                  ),
                  heightTwenty,
                  formLabel(context, text: 'Available Time'),
                  heightFifty,
                  heightTen,
                  submissionButton(
                    context,
                    title: 'Submit Details',
                    onTap: () => pushTo(context, const DoctorWrapper()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
