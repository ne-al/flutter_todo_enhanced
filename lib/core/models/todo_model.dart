// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
class TodoModel with _$TodoModel {
  const TodoModel._();
  const factory TodoModel({
    required String todo_title,
    required String category,
    required DateTime createdAt,
    required String todoId,
    required String authorId,
    @Default(false) bool isEdited,
    @Default(false) bool isCompleted,
    String? todo_description,
    DateTime? editedAt,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> data) =>
      _$TodoModelFromJson(data);
}
