import 'package:flutter/material.dart';
import 'package:flutter_todo_enhanced/app/components/custom_textfield.dart';
import 'package:gap/gap.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CustomTextField(
              controller: titleController,
              hintText: 'Add a todo title',
              labelText: 'Todo title',
              isObscure: false,
            ),
            const Gap(12),
            CustomTextField(
              controller: descriptionController,
              hintText: 'Add a todo description',
              labelText: 'Todo description',
              isObscure: false,
            ),
          ],
        ),
      ),
    );
  }
}
