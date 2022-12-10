import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:todo/apptheme.dart';
import 'package:todo/items_of_task_list.dart';

class TaskListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(const Duration(days: 712)),
            lastDate: DateTime.now().add(const Duration(days: 712)),
            onDateSelected: (date) => print(date),
            leftMargin: 20,
            monthColor: AppTheme.black,
            dayColor: AppTheme.black,
            activeDayColor: AppTheme.white,
            activeBackgroundDayColor: AppTheme.primaryColor,
            dotsColor: AppTheme.white,
            locale: 'en_ISO',
          ),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index)
            {
              return TaskListItemsWidget();
            },
            itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
