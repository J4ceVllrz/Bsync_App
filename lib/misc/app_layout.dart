import 'package:bsync_app1/misc/colors_texts.dart';

import "package:flutter/material.dart";
import 'package:intl/intl.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}

class DateUtility {
  // Private constructor to prevent instantiation.
  DateUtility._();

  // Getter for the current date.
  static DateTime get currentDate => DateTime.now();

  // Formatted date string.
  static String get formattedCurrentDate {
    final formatter = DateFormat('EEE, dd MMMM yyyy');
    return formatter.format(currentDate);
  }
}

class GreetingsInfo extends StatelessWidget {
  const GreetingsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Steve Francis!",
                style: Styles.headLineStyle1.copyWith(
                    fontSize: 26,
                    height: 0,
                    letterSpacing: 0,
                    wordSpacing: 0,
                    fontWeight: FontWeight.bold),
              ),
              //Date
              Text(DateUtility.formattedCurrentDate,
                  style: Styles.headLineStyle3.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColor.withOpacity(0.7),
                      height: 0)),
            ],
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/images/dp.jpg'),
                )),
          ),
        ],
      ),
    );
  }
}

class ProjectInfo extends StatelessWidget {
  const ProjectInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout.getSize(context);
    return Container(
      width: AppLayout.getSize(context).width,
      padding: const EdgeInsets.only(
        top: 5,
        left: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(color: AppColors.appColorRed),
            child: SizedBox(
              height: 65,
              width: size.width * .66,
              child: Text(
                "BSync Mobile Application Project",
                textScaler: TextScaler.noScaling,
                overflow: TextOverflow.clip,
                maxLines: 2,
                style: Styles.headLineStyle2
                    .copyWith(color: AppColors.mainBgColor),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: AppColors.appColorRed),
            child: SizedBox(
              child: Text(
                "Started: ",
                style: Styles.headLineStyle4
                    .copyWith(color: AppColors.mainBgColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
