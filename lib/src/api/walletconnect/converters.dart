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

class StringListConverter implements JsonConverter<List<String>, dynamic> {
  const StringListConverter();

  @override
  List<String> fromJson(dynamic json) {
    if (json == null) return [];
    if (json is List) {
      return json.where((element) => element != null).map((e) => '$e').toList();
    }
    return [];
  }

  @override
  List<String> toJson(List<String> object) => object;
}
