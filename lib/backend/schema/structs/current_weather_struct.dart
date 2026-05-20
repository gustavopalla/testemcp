// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct CurrentWeather
class CurrentWeatherStruct extends BaseStruct {
  CurrentWeatherStruct({
    /// CurrentWeather.temp
    int? temp,

    /// CurrentWeather.condition
    String? condition,

    /// CurrentWeather.maxTemp
    int? maxTemp,

    /// CurrentWeather.minTemp
    int? minTemp,

    /// CurrentWeather.humidity
    int? humidity,

    /// CurrentWeather.windSpeed
    double? windSpeed,

    /// CurrentWeather.uvIndex
    double? uvIndex,

    /// CurrentWeather.feelsLike
    int? feelsLike,
  })  : _temp = temp,
        _condition = condition,
        _maxTemp = maxTemp,
        _minTemp = minTemp,
        _humidity = humidity,
        _windSpeed = windSpeed,
        _uvIndex = uvIndex,
        _feelsLike = feelsLike;

  // "temp" field.
  int? _temp;
  int get temp => _temp ?? 0;
  set temp(int? val) => _temp = val;

  void incrementTemp(int amount) => temp = temp + amount;

  bool hasTemp() => _temp != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  set condition(String? val) => _condition = val;

  bool hasCondition() => _condition != null;

  // "maxTemp" field.
  int? _maxTemp;
  int get maxTemp => _maxTemp ?? 0;
  set maxTemp(int? val) => _maxTemp = val;

  void incrementMaxTemp(int amount) => maxTemp = maxTemp + amount;

  bool hasMaxTemp() => _maxTemp != null;

  // "minTemp" field.
  int? _minTemp;
  int get minTemp => _minTemp ?? 0;
  set minTemp(int? val) => _minTemp = val;

  void incrementMinTemp(int amount) => minTemp = minTemp + amount;

  bool hasMinTemp() => _minTemp != null;

  // "humidity" field.
  int? _humidity;
  int get humidity => _humidity ?? 0;
  set humidity(int? val) => _humidity = val;

  void incrementHumidity(int amount) => humidity = humidity + amount;

  bool hasHumidity() => _humidity != null;

  // "windSpeed" field.
  double? _windSpeed;
  double get windSpeed => _windSpeed ?? 0.0;
  set windSpeed(double? val) => _windSpeed = val;

  void incrementWindSpeed(double amount) => windSpeed = windSpeed + amount;

  bool hasWindSpeed() => _windSpeed != null;

  // "uvIndex" field.
  double? _uvIndex;
  double get uvIndex => _uvIndex ?? 0.0;
  set uvIndex(double? val) => _uvIndex = val;

  void incrementUvIndex(double amount) => uvIndex = uvIndex + amount;

  bool hasUvIndex() => _uvIndex != null;

  // "feelsLike" field.
  int? _feelsLike;
  int get feelsLike => _feelsLike ?? 0;
  set feelsLike(int? val) => _feelsLike = val;

  void incrementFeelsLike(int amount) => feelsLike = feelsLike + amount;

  bool hasFeelsLike() => _feelsLike != null;

  static CurrentWeatherStruct fromMap(Map<String, dynamic> data) =>
      CurrentWeatherStruct(
        temp: castToType<int>(data['temp']),
        condition: data['condition'] as String?,
        maxTemp: castToType<int>(data['maxTemp']),
        minTemp: castToType<int>(data['minTemp']),
        humidity: castToType<int>(data['humidity']),
        windSpeed: castToType<double>(data['windSpeed']),
        uvIndex: castToType<double>(data['uvIndex']),
        feelsLike: castToType<int>(data['feelsLike']),
      );

  static CurrentWeatherStruct? maybeFromMap(dynamic data) => data is Map
      ? CurrentWeatherStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'temp': _temp,
        'condition': _condition,
        'maxTemp': _maxTemp,
        'minTemp': _minTemp,
        'humidity': _humidity,
        'windSpeed': _windSpeed,
        'uvIndex': _uvIndex,
        'feelsLike': _feelsLike,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'temp': serializeParam(
          _temp,
          ParamType.int,
        ),
        'condition': serializeParam(
          _condition,
          ParamType.String,
        ),
        'maxTemp': serializeParam(
          _maxTemp,
          ParamType.int,
        ),
        'minTemp': serializeParam(
          _minTemp,
          ParamType.int,
        ),
        'humidity': serializeParam(
          _humidity,
          ParamType.int,
        ),
        'windSpeed': serializeParam(
          _windSpeed,
          ParamType.double,
        ),
        'uvIndex': serializeParam(
          _uvIndex,
          ParamType.double,
        ),
        'feelsLike': serializeParam(
          _feelsLike,
          ParamType.int,
        ),
      }.withoutNulls;

  static CurrentWeatherStruct fromSerializableMap(Map<String, dynamic> data) =>
      CurrentWeatherStruct(
        temp: deserializeParam(
          data['temp'],
          ParamType.int,
          false,
        ),
        condition: deserializeParam(
          data['condition'],
          ParamType.String,
          false,
        ),
        maxTemp: deserializeParam(
          data['maxTemp'],
          ParamType.int,
          false,
        ),
        minTemp: deserializeParam(
          data['minTemp'],
          ParamType.int,
          false,
        ),
        humidity: deserializeParam(
          data['humidity'],
          ParamType.int,
          false,
        ),
        windSpeed: deserializeParam(
          data['windSpeed'],
          ParamType.double,
          false,
        ),
        uvIndex: deserializeParam(
          data['uvIndex'],
          ParamType.double,
          false,
        ),
        feelsLike: deserializeParam(
          data['feelsLike'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CurrentWeatherStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CurrentWeatherStruct &&
        temp == other.temp &&
        condition == other.condition &&
        maxTemp == other.maxTemp &&
        minTemp == other.minTemp &&
        humidity == other.humidity &&
        windSpeed == other.windSpeed &&
        uvIndex == other.uvIndex &&
        feelsLike == other.feelsLike;
  }

  @override
  int get hashCode => const ListEquality().hash([
        temp,
        condition,
        maxTemp,
        minTemp,
        humidity,
        windSpeed,
        uvIndex,
        feelsLike
      ]);
}

CurrentWeatherStruct createCurrentWeatherStruct({
  int? temp,
  String? condition,
  int? maxTemp,
  int? minTemp,
  int? humidity,
  double? windSpeed,
  double? uvIndex,
  int? feelsLike,
}) =>
    CurrentWeatherStruct(
      temp: temp,
      condition: condition,
      maxTemp: maxTemp,
      minTemp: minTemp,
      humidity: humidity,
      windSpeed: windSpeed,
      uvIndex: uvIndex,
      feelsLike: feelsLike,
    );
