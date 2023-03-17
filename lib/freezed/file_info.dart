import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_info.freezed.dart';
part 'file_info.g.dart';


@freezed
class FileInfo with _$FileInfo {
  const FileInfo._();

  const factory FileInfo({
      @JsonKey(name: 'absolutePath') @Default('')  String absolutePath,
      @JsonKey(name: 'collect') @Default(false)  bool collect,
      @JsonKey(name: 'createDate') @Default('')  String createDate,
      @JsonKey(name: 'fileName') @Default('')  String fileName,
      @JsonKey(name: 'fileSize') @Default(0)  int fileSize,
      @JsonKey(name: 'fileType') @Default('')  String fileType,
      @JsonKey(name: 'height') @Default(0)  int height,
      @JsonKey(name: 'id') @Default(0)  int id,
      @JsonKey(name: 'intro') @Default('')  String intro,
      @JsonKey(name: 'tagColor') @Default('')  String tagColor,
      @JsonKey(name: 'updateDate') @Default('')  String updateDate,
      @JsonKey(name: 'url') @Default('')  String url,
      @JsonKey(name: 'width') @Default(0)  int width,
    }) = _FileInfo;
  
  factory FileInfo.fromJson(Map<String, dynamic> json) => _$FileInfoFromJson(json);

}

