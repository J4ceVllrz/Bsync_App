import 'package:bsync_app1/misc/project_cards.dart';
import 'package:bsync_app1/misc/app_layout.dart';
import 'package:bsync_app1/misc/colors_texts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      backgroundColor: AppColors.mainBgColor,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
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
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Projects',
                      style: Styles.headLineStyle1
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        print('Going to all projects page');
                      },
                      child: Text(
                        'See All',
                        style: Styles.txtStyle
                            .copyWith(color: AppColors.appColorA),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return const AppCards();
                  })),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My tasks:',
                  style: Styles.headLineStyle1
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    print('Going to all projects page');
                  },
                  child: Text(
                    'See All',
                    style: Styles.txtStyle.copyWith(color: AppColors.appColorA),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
