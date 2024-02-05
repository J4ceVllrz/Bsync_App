import 'package:bsync_app1/misc/colors_texts.dart';
import 'package:bsync_app1/misc/utils/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreateProject extends StatefulWidget {
  final Function(String projectText, String descriptionText) onProjectSave;
  const CreateProject({super.key, required this.onProjectSave});

  @override
  State<CreateProject> createState() => _CreateProjectState();
}

class _CreateProjectState extends State<CreateProject> {
  void saveProject() {
    String projectText = _projectTextController.text;
    String descriptionText = _descriptiontextController.text;

    widget.onProjectSave(projectText, descriptionText);
    Navigator.pop(context);
  }

  //Controllers
  final TextEditingController _projectTextController = TextEditingController();
  final _descriptiontextController = TextEditingController();
  //ScrollControllers
  final ScrollController _projectScrollController = ScrollController();
  final ScrollController _descriptionScrollController = ScrollController();
  //FocusNodes
  final FocusNode _projectFocusNode = FocusNode();
  final FocusNode _descriptionFocusNode = FocusNode();
  //Controllers

  //Save Button

  final FocusNode _textFieldFocusNode = FocusNode();
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
            SaveButton(
                nameSave: "Save",
                onPressed: () {
                  saveProject();
                }),
          ]),
        ),
        body: SingleChildScrollView(
          child: Material(
            child: Container(
              margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //User input

                      const Gap(15),
                      TextField(
                        //Project Title
                        scrollController: _projectScrollController,

                        controller: _projectTextController,
                        autofocus: true,

                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  _projectTextController.clear();
                                },
                                icon: const Icon(Icons.clear_rounded)),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            border: const OutlineInputBorder(
                                gapPadding: 2,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            labelText: "Project Title",
                            labelStyle: Styles.headLineStyle4.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.textColor.withOpacity(0.6))),
                        style: Styles.headLineStyle4,
                      ),

                      const Gap(20),
                      TextField(
                        //Project Description
                        controller: _descriptiontextController,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  _descriptiontextController.clear();
                                },
                                icon: const Icon(Icons.clear_rounded)),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            border: const OutlineInputBorder(
                                gapPadding: 2,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            labelText: "Description",
                            labelStyle: Styles.headLineStyle4.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.textColor.withOpacity(0.6))),
                        style: Styles.headLineStyle4,
                      ),
                      const Gap(20),
                    ],
                  ),
                  //Next item
                ],
              ),
            ),
          ),
        ));
  }
}
