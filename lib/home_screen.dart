import 'package:flutter/material.dart';
import 'package:todo/add_task_bottom_sheet.dart';
import 'package:todo/apptheme.dart';
import 'package:todo/settings.dart';
import 'package:todo/tasks_list.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To Do List",
          style: Theme.of(context).primaryTextTheme.titleLarge,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          addTaskBottomSheet();
        },
        backgroundColor: AppTheme.primaryColor,
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 4, color: AppTheme.white),
            borderRadius: BorderRadius.circular(100)),
        child: const Icon(Icons.add, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: tabs[selectedIndex],
    );
  }
  List<Widget> tabs= [
    TaskListTab(),
    SettingsTab()
  ];

  void addTaskBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (context) => AddTaskBottomSheet());
  }
}
