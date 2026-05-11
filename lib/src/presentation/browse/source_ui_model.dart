import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ikisaku/src/domain/source/model/source.dart';

part 'source_ui_model.freezed.dart';

@freezed
abstract class SourceUiModel with _$SourceUiModel {
  const factory SourceUiModel.header({required String language}) = SourceHeader;

  const factory SourceUiModel.item({required Source source}) = SourceItem;
}
