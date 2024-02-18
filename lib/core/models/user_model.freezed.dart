// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  dynamic get categories => throw _privateConstructorUsedError;
  List<String> get completedTodos => throw _privateConstructorUsedError;
  List<String> get incompletedTodos => throw _privateConstructorUsedError;
  List<String> get inProgressTodos => throw _privateConstructorUsedError;
  List<String> get allTodosUid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String name,
      String email,
      String uid,
      DateTime createdAt,
      dynamic categories,
      List<String> completedTodos,
      List<String> incompletedTodos,
      List<String> inProgressTodos,
      List<String> allTodosUid});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? uid = null,
    Object? createdAt = null,
    Object? categories = freezed,
    Object? completedTodos = null,
    Object? incompletedTodos = null,
    Object? inProgressTodos = null,
    Object? allTodosUid = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as dynamic,
      completedTodos: null == completedTodos
          ? _value.completedTodos
          : completedTodos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      incompletedTodos: null == incompletedTodos
          ? _value.incompletedTodos
          : incompletedTodos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      inProgressTodos: null == inProgressTodos
          ? _value.inProgressTodos
          : inProgressTodos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allTodosUid: null == allTodosUid
          ? _value.allTodosUid
          : allTodosUid // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      String uid,
      DateTime createdAt,
      dynamic categories,
      List<String> completedTodos,
      List<String> incompletedTodos,
      List<String> inProgressTodos,
      List<String> allTodosUid});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? uid = null,
    Object? createdAt = null,
    Object? categories = freezed,
    Object? completedTodos = null,
    Object? incompletedTodos = null,
    Object? inProgressTodos = null,
    Object? allTodosUid = null,
  }) {
    return _then(_$UserModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categories: freezed == categories ? _value.categories! : categories,
      completedTodos: null == completedTodos
          ? _value._completedTodos
          : completedTodos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      incompletedTodos: null == incompletedTodos
          ? _value._incompletedTodos
          : incompletedTodos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      inProgressTodos: null == inProgressTodos
          ? _value._inProgressTodos
          : inProgressTodos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allTodosUid: null == allTodosUid
          ? _value._allTodosUid
          : allTodosUid // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl extends _UserModel {
  const _$UserModelImpl(
      {required this.name,
      required this.email,
      required this.uid,
      required this.createdAt,
      this.categories = todoDefaultCategories,
      final List<String> completedTodos = const [],
      final List<String> incompletedTodos = const [],
      final List<String> inProgressTodos = const [],
      final List<String> allTodosUid = const []})
      : _completedTodos = completedTodos,
        _incompletedTodos = incompletedTodos,
        _inProgressTodos = inProgressTodos,
        _allTodosUid = allTodosUid,
        super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String uid;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final dynamic categories;
  final List<String> _completedTodos;
  @override
  @JsonKey()
  List<String> get completedTodos {
    if (_completedTodos is EqualUnmodifiableListView) return _completedTodos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedTodos);
  }

  final List<String> _incompletedTodos;
  @override
  @JsonKey()
  List<String> get incompletedTodos {
    if (_incompletedTodos is EqualUnmodifiableListView)
      return _incompletedTodos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incompletedTodos);
  }

  final List<String> _inProgressTodos;
  @override
  @JsonKey()
  List<String> get inProgressTodos {
    if (_inProgressTodos is EqualUnmodifiableListView) return _inProgressTodos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inProgressTodos);
  }

  final List<String> _allTodosUid;
  @override
  @JsonKey()
  List<String> get allTodosUid {
    if (_allTodosUid is EqualUnmodifiableListView) return _allTodosUid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allTodosUid);
  }

  @override
  String toString() {
    return 'UserModel(name: $name, email: $email, uid: $uid, createdAt: $createdAt, categories: $categories, completedTodos: $completedTodos, incompletedTodos: $incompletedTodos, inProgressTodos: $inProgressTodos, allTodosUid: $allTodosUid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality()
                .equals(other._completedTodos, _completedTodos) &&
            const DeepCollectionEquality()
                .equals(other._incompletedTodos, _incompletedTodos) &&
            const DeepCollectionEquality()
                .equals(other._inProgressTodos, _inProgressTodos) &&
            const DeepCollectionEquality()
                .equals(other._allTodosUid, _allTodosUid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      email,
      uid,
      createdAt,
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(_completedTodos),
      const DeepCollectionEquality().hash(_incompletedTodos),
      const DeepCollectionEquality().hash(_inProgressTodos),
      const DeepCollectionEquality().hash(_allTodosUid));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {required final String name,
      required final String email,
      required final String uid,
      required final DateTime createdAt,
      final dynamic categories,
      final List<String> completedTodos,
      final List<String> incompletedTodos,
      final List<String> inProgressTodos,
      final List<String> allTodosUid}) = _$UserModelImpl;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get uid;
  @override
  DateTime get createdAt;
  @override
  dynamic get categories;
  @override
  List<String> get completedTodos;
  @override
  List<String> get incompletedTodos;
  @override
  List<String> get inProgressTodos;
  @override
  List<String> get allTodosUid;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
