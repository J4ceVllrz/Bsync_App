import 'package:bsync_app1/misc/colors_texts.dart';
import 'package:bsync_app1/misc/utils/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreateProject extends StatefulWidget {
  const CreateProject({super.key});

  @override
  State<CreateProject> createState() => _CreateProjectState();
}

class _CreateProjectState extends State<CreateProject> {
  final FocusNode _textFieldFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          leadingWidth: 30,
          automaticallyImplyLeading: true,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Create Project',
              style:
                  Styles.headLineStyle3.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            SaveButton(nameSave: "Save", onPressed: () {}),
          ]),
        ),
        body: SingleChildScrollView(
          child: Material(
            child: Container(
              margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //User input

                      Gap(15),
                      Container(
                        child: TextField(
                          autofocus: true,
                          decoration: InputDecoration(
                              suffixIcon: const Icon(
                                  Icons.check_circle_outline_rounded),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              border: OutlineInputBorder(
                                  gapPadding: 2,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              labelText: "Project Title",
                              labelStyle: Styles.headLineStyle3.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textColor.withOpacity(0.6))),
                          style: Styles.headLineStyle4,
                        ),
                      ),

                      const Gap(20),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon:
                                const Icon(Icons.check_circle_outline_rounded),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            border: OutlineInputBorder(
                                gapPadding: 2,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            labelText: "Description",
                            labelStyle: Styles.headLineStyle3.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.textColor.withOpacity(0.6))),
                        style: Styles.headLineStyle4,
                      ),
                      const Gap(20),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
