import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskname;
  final bool taskCompleted;
  Function (bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskname,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(25,25,25,0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.pink,
              borderRadius: BorderRadius.circular(12),
        )

            ],
        ),
        child: Container(
          padding: const EdgeInsets.all(24.0),
          child:Row(
            children:[
              //checkbox
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.black54,
              ),
              //taskname
              Text(
                  taskname,
                style: TextStyle(
                  fontSize: 15.5,
                  color: Colors.white,
                  decoration: taskCompleted ? TextDecoration.lineThrough:TextDecoration.none,
                  decorationThickness: 2.5,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(12)
          ),
        ),
      ),
    );
  }
}