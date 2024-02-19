// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) {
  return _TodoModel.fromJson(json);
}

/// @nodoc
mixin _$TodoModel {
  String get todo_title => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get todoId => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  bool get isEdited => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  String? get todo_description => throw _privateConstructorUsedError;
  DateTime? get editedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoModelCopyWith<TodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoModelCopyWith<$Res> {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) then) =
      _$TodoModelCopyWithImpl<$Res, TodoModel>;
  @useResult
  $Res call(
      {String todo_title,
      String category,
      DateTime createdAt,
      String todoId,
      String authorId,
      bool isEdited,
      bool isCompleted,
      String? todo_description,
      DateTime? editedAt});
}

/// @nodoc
class _$TodoModelCopyWithImpl<$Res, $Val extends TodoModel>
    implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo_title = null,
    Object? category = null,
    Object? createdAt = null,
    Object? todoId = null,
    Object? authorId = null,
    Object? isEdited = null,
    Object? isCompleted = null,
    Object? todo_description = freezed,
    Object? editedAt = freezed,
  }) {
    return _then(_value.copyWith(
      todo_title: null == todo_title
          ? _value.todo_title
          : todo_title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      isEdited: null == isEdited
          ? _value.isEdited
          : isEdited // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      todo_description: freezed == todo_description
          ? _value.todo_description
          : todo_description // ignore: cast_nullable_to_non_nullable
              as String?,
      editedAt: freezed == editedAt
          ? _value.editedAt
          : editedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoModelImplCopyWith<$Res>
    implements $TodoModelCopyWith<$Res> {
  factory _$$TodoModelImplCopyWith(
          _$TodoModelImpl value, $Res Function(_$TodoModelImpl) then) =
      __$$TodoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String todo_title,
      String category,
      DateTime createdAt,
      String todoId,
      String authorId,
      bool isEdited,
      bool isCompleted,
      String? todo_description,
      DateTime? editedAt});
}

/// @nodoc
class __$$TodoModelImplCopyWithImpl<$Res>
    extends _$TodoModelCopyWithImpl<$Res, _$TodoModelImpl>
    implements _$$TodoModelImplCopyWith<$Res> {
  __$$TodoModelImplCopyWithImpl(
      _$TodoModelImpl _value, $Res Function(_$TodoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo_title = null,
    Object? category = null,
    Object? createdAt = null,
    Object? todoId = null,
    Object? authorId = null,
    Object? isEdited = null,
    Object? isCompleted = null,
    Object? todo_description = freezed,
    Object? editedAt = freezed,
  }) {
    return _then(_$TodoModelImpl(
      todo_title: null == todo_title
          ? _value.todo_title
          : todo_title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      isEdited: null == isEdited
          ? _value.isEdited
          : isEdited // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      todo_description: freezed == todo_description
          ? _value.todo_description
          : todo_description // ignore: cast_nullable_to_non_nullable
              as String?,
      editedAt: freezed == editedAt
          ? _value.editedAt
          : editedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoModelImpl extends _TodoModel {
  const _$TodoModelImpl(
      {required this.todo_title,
      required this.category,
      required this.createdAt,
      required this.todoId,
      required this.authorId,
      this.isEdited = false,
      this.isCompleted = false,
      this.todo_description,
      this.editedAt})
      : super._();

  factory _$TodoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoModelImplFromJson(json);

  @override
  final String todo_title;
  @override
  final String category;
  @override
  final DateTime createdAt;
  @override
  final String todoId;
  @override
  final String authorId;
  @override
  @JsonKey()
  final bool isEdited;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  final String? todo_description;
  @override
  final DateTime? editedAt;

  @override
  String toString() {
    return 'TodoModel(todo_title: $todo_title, category: $category, createdAt: $createdAt, todoId: $todoId, authorId: $authorId, isEdited: $isEdited, isCompleted: $isCompleted, todo_description: $todo_description, editedAt: $editedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoModelImpl &&
            (identical(other.todo_title, todo_title) ||
                other.todo_title == todo_title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.isEdited, isEdited) ||
                other.isEdited == isEdited) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.todo_description, todo_description) ||
                other.todo_description == todo_description) &&
            (identical(other.editedAt, editedAt) ||
                other.editedAt == editedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, todo_title, category, createdAt,
      todoId, authorId, isEdited, isCompleted, todo_description, editedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoModelImplCopyWith<_$TodoModelImpl> get copyWith =>
      __$$TodoModelImplCopyWithImpl<_$TodoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoModelImplToJson(
      this,
    );
  }
}

abstract class _TodoModel extends TodoModel {
  const factory _TodoModel(
      {required final String todo_title,
      required final String category,
      required final DateTime createdAt,
      required final String todoId,
      required final String authorId,
      final bool isEdited,
      final bool isCompleted,
      final String? todo_description,
      final DateTime? editedAt}) = _$TodoModelImpl;
  const _TodoModel._() : super._();

  factory _TodoModel.fromJson(Map<String, dynamic> json) =
      _$TodoModelImpl.fromJson;

  @override
  String get todo_title;
  @override
  String get category;
  @override
  DateTime get createdAt;
  @override
  String get todoId;
  @override
  String get authorId;
  @override
  bool get isEdited;
  @override
  bool get isCompleted;
  @override
  String? get todo_description;
  @override
  DateTime? get editedAt;
  @override
  @JsonKey(ignore: true)
  _$$TodoModelImplCopyWith<_$TodoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
