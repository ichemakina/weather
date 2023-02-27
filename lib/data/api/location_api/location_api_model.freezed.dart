// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationApiModel _$LocationApiModelFromJson(Map<String, dynamic> json) {
  return _LocationApiModel.fromJson(json);
}

/// @nodoc
mixin _$LocationApiModel {
  String get name => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationApiModelCopyWith<LocationApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationApiModelCopyWith<$Res> {
  factory $LocationApiModelCopyWith(
          LocationApiModel value, $Res Function(LocationApiModel) then) =
      _$LocationApiModelCopyWithImpl<$Res, LocationApiModel>;
  @useResult
  $Res call({String name, double lat, double lon});
}

/// @nodoc
class _$LocationApiModelCopyWithImpl<$Res, $Val extends LocationApiModel>
    implements $LocationApiModelCopyWith<$Res> {
  _$LocationApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationApiModelCopyWith<$Res>
    implements $LocationApiModelCopyWith<$Res> {
  factory _$$_LocationApiModelCopyWith(
          _$_LocationApiModel value, $Res Function(_$_LocationApiModel) then) =
      __$$_LocationApiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double lat, double lon});
}

/// @nodoc
class __$$_LocationApiModelCopyWithImpl<$Res>
    extends _$LocationApiModelCopyWithImpl<$Res, _$_LocationApiModel>
    implements _$$_LocationApiModelCopyWith<$Res> {
  __$$_LocationApiModelCopyWithImpl(
      _$_LocationApiModel _value, $Res Function(_$_LocationApiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_$_LocationApiModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationApiModel
    with DiagnosticableTreeMixin
    implements _LocationApiModel {
  const _$_LocationApiModel(
      {required this.name, required this.lat, required this.lon});

  factory _$_LocationApiModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationApiModelFromJson(json);

  @override
  final String name;
  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationApiModel(name: $name, lat: $lat, lon: $lon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationApiModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lon', lon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationApiModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationApiModelCopyWith<_$_LocationApiModel> get copyWith =>
      __$$_LocationApiModelCopyWithImpl<_$_LocationApiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationApiModelToJson(
      this,
    );
  }
}

abstract class _LocationApiModel implements LocationApiModel {
  const factory _LocationApiModel(
      {required final String name,
      required final double lat,
      required final double lon}) = _$_LocationApiModel;

  factory _LocationApiModel.fromJson(Map<String, dynamic> json) =
      _$_LocationApiModel.fromJson;

  @override
  String get name;
  @override
  double get lat;
  @override
  double get lon;
  @override
  @JsonKey(ignore: true)
  _$$_LocationApiModelCopyWith<_$_LocationApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
