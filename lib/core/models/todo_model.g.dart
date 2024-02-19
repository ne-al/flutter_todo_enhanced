// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoModelImpl _$$TodoModelImplFromJson(Map<String, dynamic> json) =>
    _$TodoModelImpl(
      todo_title: json['todo_title'] as String,
      category: json['category'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isEdited: json['isEdited'] as bool? ?? false,
      isCompleted: json['isCompleted'] as bool? ?? false,
      todo_description: json['todo_description'] as String?,
      editedAt: json['editedAt'] == null
          ? null
          : DateTime.parse(json['editedAt'] as String),
    );

Map<String, dynamic> _$$TodoModelImplToJson(_$TodoModelImpl instance) =>
    <String, dynamic>{
      'todo_title': instance.todo_title,
      'category': instance.category,
      'createdAt': instance.createdAt.toIso8601String(),
      'isEdited': instance.isEdited,
      'isCompleted': instance.isCompleted,
      'todo_description': instance.todo_description,
      'editedAt': instance.editedAt?.toIso8601String(),
    };
