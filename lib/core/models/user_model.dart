import 'package:flutter_todo_enhanced/core/constant/constant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    required String name,
    required String email,
    required String uid,
    required DateTime createdAt,
    @Default(todoCategories) List<String> categories,
    @Default([]) List<String> completedTodos,
    @Default([]) List<String> incompletedTodos,
    @Default([]) List<String> inProgressTodos,
    @Default([]) List<String> allTodosUid,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> data) =>
      _$UserModelFromJson(data);
}
