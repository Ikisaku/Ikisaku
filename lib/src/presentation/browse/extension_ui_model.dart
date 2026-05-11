import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ikisaku/src/domain/extension/model/extension.dart';
import 'package:ikisaku/src/domain/extension/model/install_step.dart';

part 'extension_ui_model.freezed.dart';

@freezed
abstract class ExtensionUiModel with _$ExtensionUiModel {
  const factory ExtensionUiModel.item({
    required Extension extension,
    @Default(InstallStep.idle) InstallStep installStep,
  }) = ExtensionItemModel;
}

@freezed
class ExtensionHeader with _$ExtensionHeader {
  const factory ExtensionHeader.resource({required String textRes}) =
      ExtensionHeaderResource;

  const factory ExtensionHeader.text({required String text}) =
      ExtensionHeaderText;
}
