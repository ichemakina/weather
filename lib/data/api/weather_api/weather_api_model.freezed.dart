// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherConditions _$WeatherConditionsFromJson(Map<String, dynamic> json) {
  return _WeatherConditions.fromJson(json);
}

/// @nodoc
mixin _$WeatherConditions {
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  WeatherConditionsEnum get main => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherConditionsCopyWith<WeatherConditions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionsCopyWith<$Res> {
  factory $WeatherConditionsCopyWith(
          WeatherConditions value, $Res Function(WeatherConditions) then) =
      _$WeatherConditionsCopyWithImpl<$Res, WeatherConditions>;
  @useResult
  $Res call({String description, String icon, WeatherConditionsEnum main});
}

/// @nodoc
class _$WeatherConditionsCopyWithImpl<$Res, $Val extends WeatherConditions>
    implements $WeatherConditionsCopyWith<$Res> {
  _$WeatherConditionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? icon = null,
    Object? main = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherConditionsEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherConditionsCopyWith<$Res>
    implements $WeatherConditionsCopyWith<$Res> {
  factory _$$_WeatherConditionsCopyWith(_$_WeatherConditions value,
          $Res Function(_$_WeatherConditions) then) =
      __$$_WeatherConditionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String icon, WeatherConditionsEnum main});
}

/// @nodoc
class __$$_WeatherConditionsCopyWithImpl<$Res>
    extends _$WeatherConditionsCopyWithImpl<$Res, _$_WeatherConditions>
    implements _$$_WeatherConditionsCopyWith<$Res> {
  __$$_WeatherConditionsCopyWithImpl(
      _$_WeatherConditions _value, $Res Function(_$_WeatherConditions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? icon = null,
    Object? main = null,
  }) {
    return _then(_$_WeatherConditions(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherConditionsEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherConditions
    with DiagnosticableTreeMixin
    implements _WeatherConditions {
  const _$_WeatherConditions(
      {required this.description, required this.icon, required this.main});

  factory _$_WeatherConditions.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherConditionsFromJson(json);

  @override
  final String description;
  @override
  final String icon;
  @override
  final WeatherConditionsEnum main;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherConditions(description: $description, icon: $icon, main: $main)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherConditions'))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('main', main));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherConditions &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.main, main) || other.main == main));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, icon, main);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherConditionsCopyWith<_$_WeatherConditions> get copyWith =>
      __$$_WeatherConditionsCopyWithImpl<_$_WeatherConditions>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherConditionsToJson(
      this,
    );
  }
}

abstract class _WeatherConditions implements WeatherConditions {
  const factory _WeatherConditions(
      {required final String description,
      required final String icon,
      required final WeatherConditionsEnum main}) = _$_WeatherConditions;

  factory _WeatherConditions.fromJson(Map<String, dynamic> json) =
      _$_WeatherConditions.fromJson;

  @override
  String get description;
  @override
  String get icon;
  @override
  WeatherConditionsEnum get main;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherConditionsCopyWith<_$_WeatherConditions> get copyWith =>
      throw _privateConstructorUsedError;
}

Temperature _$TemperatureFromJson(Map<String, dynamic> json) {
  return _Temperature.fromJson(json);
}

/// @nodoc
mixin _$Temperature {
  double get temp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemperatureCopyWith<Temperature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureCopyWith<$Res> {
  factory $TemperatureCopyWith(
          Temperature value, $Res Function(Temperature) then) =
      _$TemperatureCopyWithImpl<$Res, Temperature>;
  @useResult
  $Res call({double temp});
}

/// @nodoc
class _$TemperatureCopyWithImpl<$Res, $Val extends Temperature>
    implements $TemperatureCopyWith<$Res> {
  _$TemperatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TemperatureCopyWith<$Res>
    implements $TemperatureCopyWith<$Res> {
  factory _$$_TemperatureCopyWith(
          _$_Temperature value, $Res Function(_$_Temperature) then) =
      __$$_TemperatureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double temp});
}

/// @nodoc
class __$$_TemperatureCopyWithImpl<$Res>
    extends _$TemperatureCopyWithImpl<$Res, _$_Temperature>
    implements _$$_TemperatureCopyWith<$Res> {
  __$$_TemperatureCopyWithImpl(
      _$_Temperature _value, $Res Function(_$_Temperature) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
  }) {
    return _then(_$_Temperature(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Temperature with DiagnosticableTreeMixin implements _Temperature {
  const _$_Temperature({required this.temp});

  factory _$_Temperature.fromJson(Map<String, dynamic> json) =>
      _$$_TemperatureFromJson(json);

  @override
  final double temp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Temperature(temp: $temp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Temperature'))
      ..add(DiagnosticsProperty('temp', temp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Temperature &&
            (identical(other.temp, temp) || other.temp == temp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TemperatureCopyWith<_$_Temperature> get copyWith =>
      __$$_TemperatureCopyWithImpl<_$_Temperature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TemperatureToJson(
      this,
    );
  }
}

abstract class _Temperature implements Temperature {
  const factory _Temperature({required final double temp}) = _$_Temperature;

  factory _Temperature.fromJson(Map<String, dynamic> json) =
      _$_Temperature.fromJson;

  @override
  double get temp;
  @override
  @JsonKey(ignore: true)
  _$$_TemperatureCopyWith<_$_Temperature> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherApiModel _$WeatherApiModelFromJson(Map<String, dynamic> json) {
  return _WeatherApiModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherApiModel {
  String get name => throw _privateConstructorUsedError;
  Temperature get main => throw _privateConstructorUsedError;
  List<WeatherConditions> get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherApiModelCopyWith<WeatherApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherApiModelCopyWith<$Res> {
  factory $WeatherApiModelCopyWith(
          WeatherApiModel value, $Res Function(WeatherApiModel) then) =
      _$WeatherApiModelCopyWithImpl<$Res, WeatherApiModel>;
  @useResult
  $Res call({String name, Temperature main, List<WeatherConditions> weather});

  $TemperatureCopyWith<$Res> get main;
}

/// @nodoc
class _$WeatherApiModelCopyWithImpl<$Res, $Val extends WeatherApiModel>
    implements $WeatherApiModelCopyWith<$Res> {
  _$WeatherApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? main = null,
    Object? weather = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Temperature,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherConditions>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TemperatureCopyWith<$Res> get main {
    return $TemperatureCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherApiModelCopyWith<$Res>
    implements $WeatherApiModelCopyWith<$Res> {
  factory _$$_WeatherApiModelCopyWith(
          _$_WeatherApiModel value, $Res Function(_$_WeatherApiModel) then) =
      __$$_WeatherApiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Temperature main, List<WeatherConditions> weather});

  @override
  $TemperatureCopyWith<$Res> get main;
}

/// @nodoc
class __$$_WeatherApiModelCopyWithImpl<$Res>
    extends _$WeatherApiModelCopyWithImpl<$Res, _$_WeatherApiModel>
    implements _$$_WeatherApiModelCopyWith<$Res> {
  __$$_WeatherApiModelCopyWithImpl(
      _$_WeatherApiModel _value, $Res Function(_$_WeatherApiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? main = null,
    Object? weather = null,
  }) {
    return _then(_$_WeatherApiModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Temperature,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherConditions>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherApiModel
    with DiagnosticableTreeMixin
    implements _WeatherApiModel {
  const _$_WeatherApiModel(
      {required this.name,
      required this.main,
      required final List<WeatherConditions> weather})
      : _weather = weather;

  factory _$_WeatherApiModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherApiModelFromJson(json);

  @override
  final String name;
  @override
  final Temperature main;
  final List<WeatherConditions> _weather;
  @override
  List<WeatherConditions> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherApiModel(name: $name, main: $main, weather: $weather)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherApiModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('main', main))
      ..add(DiagnosticsProperty('weather', weather));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherApiModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, main, const DeepCollectionEquality().hash(_weather));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherApiModelCopyWith<_$_WeatherApiModel> get copyWith =>
      __$$_WeatherApiModelCopyWithImpl<_$_WeatherApiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherApiModelToJson(
      this,
    );
  }
}

abstract class _WeatherApiModel implements WeatherApiModel {
  const factory _WeatherApiModel(
      {required final String name,
      required final Temperature main,
      required final List<WeatherConditions> weather}) = _$_WeatherApiModel;

  factory _WeatherApiModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherApiModel.fromJson;

  @override
  String get name;
  @override
  Temperature get main;
  @override
  List<WeatherConditions> get weather;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherApiModelCopyWith<_$_WeatherApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
