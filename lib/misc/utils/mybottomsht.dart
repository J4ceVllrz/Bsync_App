import 'package:bsync_app1/misc/app_layout.dart';
import 'package:bsync_app1/misc/colors_texts.dart';
import 'package:bsync_app1/misc/utils/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BottomSheetOne extends StatefulWidget {
  const BottomSheetOne({super.key});

  @override
  State<BottomSheetOne> createState() => _BottomSheetOneState();
}

class _BottomSheetOneState extends State<BottomSheetOne> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Material(
      child: Container(
        height: 800,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //User input

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Create Project',
                        style: Styles.headLineStyle2,
                        textAlign: TextAlign.left,
                      ),
                      SaveButton(nameSave: "Save", onPressed: () {}),
                    ]),
                Gap(15),
                TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      border: OutlineInputBorder(gapPadding: 2),
                      hintText: "Project Title"),
                  style: Styles.headLineStyle4,
                ),
                const Gap(10),
                TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      border: OutlineInputBorder(),
                      hintText: "Project Description"),
                  style: Styles.headLineStyle4,
                ),
                const Gap(20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
