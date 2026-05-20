// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct HourlyForecast
class HourlyForecastStruct extends BaseStruct {
  HourlyForecastStruct({
    /// HourlyForecast.time
    String? time,

    /// HourlyForecast.iconUrl
    String? iconUrl,

    /// HourlyForecast.temp
    int? temp,
  })  : _time = time,
        _iconUrl = iconUrl,
        _temp = temp;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  // "iconUrl" field.
  String? _iconUrl;
  String get iconUrl => _iconUrl ?? '';
  set iconUrl(String? val) => _iconUrl = val;

  bool hasIconUrl() => _iconUrl != null;

  // "temp" field.
  int? _temp;
  int get temp => _temp ?? 0;
  set temp(int? val) => _temp = val;

  void incrementTemp(int amount) => temp = temp + amount;

  bool hasTemp() => _temp != null;

  static HourlyForecastStruct fromMap(Map<String, dynamic> data) =>
      HourlyForecastStruct(
        time: data['time'] as String?,
        iconUrl: data['iconUrl'] as String?,
        temp: castToType<int>(data['temp']),
      );

  static HourlyForecastStruct? maybeFromMap(dynamic data) => data is Map
      ? HourlyForecastStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'time': _time,
        'iconUrl': _iconUrl,
        'temp': _temp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'iconUrl': serializeParam(
          _iconUrl,
          ParamType.String,
        ),
        'temp': serializeParam(
          _temp,
          ParamType.int,
        ),
      }.withoutNulls;

  static HourlyForecastStruct fromSerializableMap(Map<String, dynamic> data) =>
      HourlyForecastStruct(
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        iconUrl: deserializeParam(
          data['iconUrl'],
          ParamType.String,
          false,
        ),
        temp: deserializeParam(
          data['temp'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'HourlyForecastStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HourlyForecastStruct &&
        time == other.time &&
        iconUrl == other.iconUrl &&
        temp == other.temp;
  }

  @override
  int get hashCode => const ListEquality().hash([time, iconUrl, temp]);
}

HourlyForecastStruct createHourlyForecastStruct({
  String? time,
  String? iconUrl,
  int? temp,
}) =>
    HourlyForecastStruct(
      time: time,
      iconUrl: iconUrl,
      temp: temp,
    );
