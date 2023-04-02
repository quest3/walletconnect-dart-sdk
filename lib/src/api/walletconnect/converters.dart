import 'package:json_annotation/json_annotation.dart';

class NullableIntConverter implements JsonConverter<int?, dynamic> {
  const NullableIntConverter();

  @override
  int? fromJson(dynamic json) {
    if (json == null) return null;
    return int.tryParse('$json');
  }

  @override
  int? toJson(int? object) => object;
}

class IntConverter implements JsonConverter<int, dynamic> {
  const IntConverter();

  @override
  int fromJson(dynamic json) {
    if (json == null) return 0;
    return int.tryParse('$json') ?? 0;
  }

  @override
  int toJson(int? object) => object ?? 0;
}
