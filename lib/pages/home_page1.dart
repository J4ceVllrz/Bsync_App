// ignore_for_file: unused_import

import 'package:bsync_app1/misc/project_cards.dart';
import 'package:bsync_app1/misc/app_layout.dart';
import 'package:bsync_app1/misc/colors_texts.dart';
import 'package:bsync_app1/misc/reusable_option.dart';
import 'package:bsync_app1/misc/task_list.dart';
import 'package:bsync_app1/misc/utils/create_project.dart';
import 'package:bsync_app1/misc/utils/mybottomsht.dart';
import 'package:bsync_app1/pages/project_page.dart';
import 'package:bsync_app1/pages/settings_page.dart';
import 'package:bsync_app1/pages/timeline_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> with TickerProviderStateMixin {
  // void createNewTask(BuildContext context) {
  //   final AnimationController animationController = AnimationController(
  //     vsync: this,
  //   );
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return DialogBox();
  //       });
  // }

  // void _showBottomSheet() {
  //   showModalBottomSheet(
  //       transitionAnimationController: AnimationController(
  //           vsync: this, duration: Duration(milliseconds: 300)),
  //       scrollControlDisabledMaxHeightRatio: 1,
  //       showDragHandle: true,
  //       enableDrag: true,
  //       isScrollControlled: true,
  //       context: context,
  //       builder: (BuildContext context) {
  //         return BottomSheetOne();
  //       });
  // }

  void createProject() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CreateProject()));
  }

  //vars
  List<String> enteredTexts = [];
  //

  @override
  Widget build(BuildContext context) {
    //vars
    EdgeInsets padding = MediaQuery.of(context).padding;
    final size = AppLayout.getSize(context);
    //
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: padding.top, bottom: padding.bottom),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 30)),
            SliverToBoxAdapter(
              //TopGreetings
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const GreetingsInfo(),
                    const Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Projects',
                          style: Styles.headLineStyle2
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
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              //ProjectCards
              child: SizedBox(
                height: 250,
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
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My tasks:',
                      style: Styles.headLineStyle2
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      child: InkWell(
                          onTap: () {
                            createProject();
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: AppColors.textColor,
                                borderRadius: BorderRadius.circular(4)),
                            child: Icon(
                              Icons.add,
                              color: AppColors.otherBg,
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        width: size.width * 0.9,
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.deepPurple.withOpacity(.5),
                                offset: const Offset(-0.3, 0),
                                blurRadius: .3,
                              ),
                              BoxShadow(
                                color: Colors.deepPurple.withOpacity(.5),
                                offset: const Offset(0, 3),
                                blurRadius: .3,
                              ),
                            ],
                          ),
                          child: ListTile(),
                        ),
                      ),
                      const Divider(
                        height: 10,
                        indent: 50,
                        endIndent: 50,
                        color: Colors.transparent,
                      ),
                    ],
                  );
                },
                childCount: 2,
              ),
            )
          ],
        ),
      ),
    );

    //   Container(
    //     padding: EdgeInsets.only(top: padding.top),
    //     child: CustomScrollView(
    //       physics: BouncingScrollPhysics(),
    //       slivers: [
    //         const SliverToBoxAdapter(child: SizedBox(height: 30)),
    //         SliverToBoxAdapter(
    //           //TopGreetings
    //           child: Container(
    //             padding: const EdgeInsets.symmetric(horizontal: 20),
    //             child: Column(
    //               children: [
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Text(
    //                           "Hello, Steve Francis!",
    //                           style: Styles.headLineStyle1.copyWith(
    //                               fontSize: 26,
    //                               height: 0,
    //                               letterSpacing: 0,
    //                               wordSpacing: 0,
    //                               fontWeight: FontWeight.bold),
    //                         ),
    //                         //Date
    //                         Text(DateUtility.formattedCurrentDate,
    //                             style: Styles.headLineStyle3.copyWith(
    //                                 fontWeight: FontWeight.bold,
    //                                 color: AppColors.textColor.withOpacity(0.7),
    //                                 height: 0)),
    //                       ],
    //                     ),
    //                     Container(
    //                       height: 50,
    //                       width: 50,
    //                       decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(50),
    //                           image: const DecorationImage(
    //                             fit: BoxFit.fitHeight,
    //                             image: AssetImage('assets/images/dp.jpg'),
    //                           )),
    //                     ),
    //                   ],
    //                 ),
    //                 const Gap(30),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     Text(
    //                       'Projects',
    //                       style: Styles.headLineStyle2
    //                           .copyWith(fontWeight: FontWeight.bold),
    //                     ),
    //                     InkWell(
    //                       onTap: () {
    //                         print('Going to all projects page');
    //                       },
    //                       child: Text(
    //                         'See All',
    //                         style: Styles.txtStyle
    //                             .copyWith(color: AppColors.appColorA),
    //                       ),
    //                     )
    //                   ],
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //         SliverToBoxAdapter(
    //           //ProjectCards
    //           child: SizedBox(
    //             height: 300,
    //             child: Padding(
    //               padding: const EdgeInsets.all(16.0),
    //               child: ListView.builder(
    //                   itemCount: 3,
    //                   scrollDirection: Axis.horizontal,
    //                   itemBuilder: ((context, index) {
    //                     return const AppCards();
    //                   })),
    //             ),
    //           ),
    //         ),
    //         SliverToBoxAdapter(
    //           child: Container(
    //             padding: const EdgeInsets.symmetric(horizontal: 20),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text(
    //                   'My tasks:',
    //                   style: Styles.headLineStyle2
    //                       .copyWith(fontWeight: FontWeight.bold),
    //                 ),
    //                 InkWell(
    //                   onTap: () {
    //                     print('Going to all projects page');
    //                   },
    //                   child: Text(
    //                     'See All',
    //                     style: Styles.txtStyle
    //                         .copyWith(color: AppColors.appColorA),
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //         const SliverToBoxAdapter(child: SizedBox(height: 10)),
    //         MyTasks(),
    //       ],
    //     ),
    //   ),
    // );
  }
}
