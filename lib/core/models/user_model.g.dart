// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      uid: json['uid'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          todoCategories,
      completedTodos: (json['completedTodos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      incompletedTodos: (json['incompletedTodos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      inProgressTodos: (json['inProgressTodos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      allTodosUid: (json['allTodosUid'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'uid': instance.uid,
      'createdAt': instance.createdAt.toIso8601String(),
      'categories': instance.categories,
      'completedTodos': instance.completedTodos,
      'incompletedTodos': instance.incompletedTodos,
      'inProgressTodos': instance.inProgressTodos,
      'allTodosUid': instance.allTodosUid,
    };
