import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather/models/location.dart';

part 'location_api_model.freezed.dart';

part 'location_api_model.g.dart';

@freezed
class LocationApiModel with _$LocationApiModel {
  const factory LocationApiModel({
    required String name,
    required double lat,
    required double lon,
  }) = _LocationApiModel;

  factory LocationApiModel.fromJson(Map<String, Object?> json) =>
      _$LocationApiModelFromJson(json);
}

extension LocationApiModelToDomain on LocationApiModel {
  Location toDomain() {
    return Location(
      name: name,
      lat: lat,
      lon: lon,
    );
  }
}
