import 'package:json_annotation/json_annotation.dart';

part 'sample_model.g.dart';

@JsonSerializable()
class SampleModel {
  String prop1;
  String prop2;
  String prop3;
  String prop4;

  SampleModel({
    this.prop1,
    this.prop2,
    this.prop3,
    this.prop4,
  });

  factory SampleModel.fromJson(Map<String, dynamic> json) =>
      _$SampleModelFromJson(json);

  Map<String, dynamic> toJson() => _$SampleModelToJson(this);
}
