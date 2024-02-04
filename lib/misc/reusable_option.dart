import 'package:bsync_app1/misc/colors_texts.dart';
import 'package:bsync_app1/misc/utils/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({super.key});

  @override
  State<DialogBox> createState() => _DialogBox();
}

class _DialogBox extends State<DialogBox> {
  // vars
  TextEditingController titleCtrl = TextEditingController();
  TextEditingController descrCtrl = TextEditingController();
  List<String> enteredTexts = [];
  //
  //
  //
  @override
  Widget build(BuildContext context) {
    // vars

    //
    return AlertDialog(
      insetPadding: EdgeInsets.only(left: 5, right: 4),
      scrollable: true,
      title: Text(
        "Add a task",
        style: Styles.headLineStyle4.copyWith(fontSize: 20),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      backgroundColor: AppColors.otherBg,
      content: Container(
        height: 200,
        decoration: BoxDecoration(color: Colors.pink),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //User input

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
            // buttons: SAVE AND CANCEL
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                SaveButton(nameSave: "Save", onPressed: () {}),
                const Gap(10),
                //cancel button
                CancelButton1(nameCancel: "Cancel", onPressed: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
