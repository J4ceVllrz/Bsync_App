import 'package:bsync_app1/misc/app_layout.dart';
import 'package:bsync_app1/misc/colors_texts.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppCards extends StatelessWidget {
  const AppCards({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.8,
      height: size.height,
      child: Container(
        padding: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //Days
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.botIcons,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                            color: AppColors.mainBgColor,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Text(
                            '754 days',
                            style: Styles.headLineStyle3.copyWith(
                                color: AppColors.botIcons,
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.info_outline,
                    size: 20,
                    color: AppColors.mainBgColor,
                  )
                ],
              ),
            ),

            //curved
            Container(
              //projects info
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.appColorA,
              ),
              child: ProjectInfo(),
            ),

            //Icons with comments
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.botIcons,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      print("Shows comments");
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.message_rounded,
                          color: AppColors.mainBgColor,
                        ),
                        const Gap(4),
                        Text(
                          "8",
                          style: Styles.headLineStyle4.copyWith(
                              color: AppColors.mainBgColor,
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const Gap(20),
                  InkWell(
                    onTap: () {
                      print("Shows comments");
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.task,
                          color: AppColors.mainBgColor,
                        ),
                        const Gap(4),
                        Text(
                          "12",
                          style: Styles.headLineStyle4.copyWith(
                              color: AppColors.mainBgColor,
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                      ],
                    ),
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
