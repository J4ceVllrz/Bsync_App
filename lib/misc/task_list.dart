import 'package:bsync_app1/misc/app_layout.dart';
import 'package:bsync_app1/misc/colors_texts.dart';
import 'package:flutter/material.dart';

class MyTasks extends StatefulWidget {
  const MyTasks({
    super.key,
  });

  @override
  State<MyTasks> createState() => _MyTasksState();
}

class _MyTasksState extends State<MyTasks> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        //parameters
        childCount: 2,
        //
        //
        (BuildContext context, int index) {
          return Container(
              width: AppLayout.getSize(context).width * 9,
              height: 80,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColors.appColorBlue,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.appColorBlue.withOpacity(.5),
                    offset: const Offset(-0.3, 0),
                    blurRadius: .3,
                  ),
                  BoxShadow(
                    color: AppColors.appColorBlue.withOpacity(.5),
                    offset: const Offset(0, 3),
                    blurRadius: .3,
                  )
                ],
              ),
              child: Text("hasd"));
        },
      ),
    );
  }
}
