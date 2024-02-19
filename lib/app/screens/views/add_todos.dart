import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_todo_enhanced/app/components/custom_textfield.dart';
import 'package:flutter_todo_enhanced/core/providers/todo_provider.dart';
import 'package:flutter_todo_enhanced/core/services/data_service.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  String? selectedValue;

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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ).r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              Consumer(
                builder: (context, ref, child) {
                  final categories = ref.watch(categoriesProvider);
                  return categories.when(
                    data: (data) {
                      return DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Text(
                            'Select Category',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                          items: data
                              .map((String item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (String? value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            height: 40,
                            width: 140,
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                          ),
                        ),
                      );
                    },
                    error: (error, stackTrace) {
                      return const Center(
                        child: Text('ERROR'),
                      );
                    },
                    loading: () {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    },
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                    onPressed: addTodo,
                    child: const Text('Add'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addTodo() async {
    if (titleController.text.trim().isEmpty) {
      return;
    }
    if (selectedValue == null) {
      return;
    }

    await DataService().addTodo(
      titleController.text.trim(),
      descriptionController.text.trim(),
      selectedValue!,
    );
    if (!context.mounted) return;
    context.pop();
  }
}
