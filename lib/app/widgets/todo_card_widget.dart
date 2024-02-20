import 'package:flutter/material.dart';
import 'package:flutter_todo_enhanced/core/models/todo_model.dart';

class TodoCardWidget extends StatelessWidget {
  final TodoModel data;
  const TodoCardWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: data.isCompleted,
          onChanged: (value) {},
        ),
        Text(
          data.todo_title,
          style: TextStyle(
            decoration: data.isCompleted
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
      ],
    );
  }
}
