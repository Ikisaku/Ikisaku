import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
sealed class Category with _$Category {
  const factory Category({
    required int id,
    required String name,
    @Default(0) int order,
    @Default(0) int flags,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
