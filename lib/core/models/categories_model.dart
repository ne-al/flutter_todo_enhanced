import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
  const CategoriesModel._();
  const factory CategoriesModel({
    required String name,
    required double width,
  }) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> data) =>
      _$CategoriesModelFromJson(data);
}
