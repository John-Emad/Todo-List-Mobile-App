import 'package:flutter/material.dart';
import 'package:todo/apptheme.dart';

class TaskListItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppTheme.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 3,
            color: AppTheme.primaryColor,
          ),
          Column(
            children: [
              Text(
                "Title",
                style: Theme.of(context).primaryTextTheme.titleSmall,
              ),
              Text("Time")
            ],
          ),
          Container(
            height: 30,
            width: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppTheme.primaryColor),
            child: const Icon(
              Icons.done,
              size: 30,
              color: AppTheme.white,
            ),
          )
        ],
      ),
    );
  }
}
