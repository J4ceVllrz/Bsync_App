import 'package:bsync_app1/misc/colors_texts.dart';
import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final String nameSave;
  VoidCallback onPressed;

  SaveButton({
    super.key,
    required this.nameSave,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 4,
      onPressed: onPressed,
      color: Colors.green[800],
      textColor: AppColors.otherBg,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Text(nameSave),
    );
  }
}

class CancelButton1 extends StatelessWidget {
  final String nameCancel;
  VoidCallback onPressed;
  CancelButton1({
    super.key,
    required this.nameCancel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: AppColors.appColorRed1,
      textColor: AppColors.otherBg,
      child: Text(nameCancel),
    );
    ;
  }
}
