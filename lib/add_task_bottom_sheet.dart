import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add New Task",
            style: Theme.of(context).primaryTextTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          Form(
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                decoration: const InputDecoration(hintText: "Title"),
              ),
                const SizedBox(height: 20,),
                TextFormField(minLines: 1,
                  decoration: const InputDecoration(hintText: "Description"),),
                const SizedBox(height: 20,),
                Text("Select Time",
                  style: Theme.of(context).primaryTextTheme.titleMedium,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 20,),
                ElevatedButton(onPressed: (){},
                    child: Text("ADD",
                      style: Theme.of(context).primaryTextTheme.titleLarge,
                    ),

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
