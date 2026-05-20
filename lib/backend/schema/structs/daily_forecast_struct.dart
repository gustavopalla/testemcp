// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct DailyForecast
class DailyForecastStruct extends BaseStruct {
  DailyForecastStruct({
    /// DailyForecast.dayOfWeek
    String? dayOfWeek,

    /// DailyForecast.iconUrl
    String? iconUrl,

    /// DailyForecast.minTemp
    int? minTemp,

    /// DailyForecast.maxTemp
    int? maxTemp,
  })  : _dayOfWeek = dayOfWeek,
        _iconUrl = iconUrl,
        _minTemp = minTemp,
        _maxTemp = maxTemp;

  // "dayOfWeek" field.
  String? _dayOfWeek;
  String get dayOfWeek => _dayOfWeek ?? '';
  set dayOfWeek(String? val) => _dayOfWeek = val;

  bool hasDayOfWeek() => _dayOfWeek != null;

  // "iconUrl" field.
  String? _iconUrl;
  String get iconUrl => _iconUrl ?? '';
  set iconUrl(String? val) => _iconUrl = val;

  bool hasIconUrl() => _iconUrl != null;

  // "minTemp" field.
  int? _minTemp;
  int get minTemp => _minTemp ?? 0;
  set minTemp(int? val) => _minTemp = val;

  void incrementMinTemp(int amount) => minTemp = minTemp + amount;

  bool hasMinTemp() => _minTemp != null;

  // "maxTemp" field.
  int? _maxTemp;
  int get maxTemp => _maxTemp ?? 0;
  set maxTemp(int? val) => _maxTemp = val;

  void incrementMaxTemp(int amount) => maxTemp = maxTemp + amount;

  bool hasMaxTemp() => _maxTemp != null;

  static DailyForecastStruct fromMap(Map<String, dynamic> data) =>
      DailyForecastStruct(
        dayOfWeek: data['dayOfWeek'] as String?,
        iconUrl: data['iconUrl'] as String?,
        minTemp: castToType<int>(data['minTemp']),
        maxTemp: castToType<int>(data['maxTemp']),
      );

  static DailyForecastStruct? maybeFromMap(dynamic data) => data is Map
      ? DailyForecastStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dayOfWeek': _dayOfWeek,
        'iconUrl': _iconUrl,
        'minTemp': _minTemp,
        'maxTemp': _maxTemp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dayOfWeek': serializeParam(
          _dayOfWeek,
          ParamType.String,
        ),
        'iconUrl': serializeParam(
          _iconUrl,
          ParamType.String,
        ),
        'minTemp': serializeParam(
          _minTemp,
          ParamType.int,
        ),
        'maxTemp': serializeParam(
          _maxTemp,
          ParamType.int,
        ),
      }.withoutNulls;

  static DailyForecastStruct fromSerializableMap(Map<String, dynamic> data) =>
      DailyForecastStruct(
        dayOfWeek: deserializeParam(
          data['dayOfWeek'],
          ParamType.String,
          false,
        ),
        iconUrl: deserializeParam(
          data['iconUrl'],
          ParamType.String,
          false,
        ),
        minTemp: deserializeParam(
          data['minTemp'],
          ParamType.int,
          false,
        ),
        maxTemp: deserializeParam(
          data['maxTemp'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DailyForecastStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DailyForecastStruct &&
        dayOfWeek == other.dayOfWeek &&
        iconUrl == other.iconUrl &&
        minTemp == other.minTemp &&
        maxTemp == other.maxTemp;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([dayOfWeek, iconUrl, minTemp, maxTemp]);
}

DailyForecastStruct createDailyForecastStruct({
  String? dayOfWeek,
  String? iconUrl,
  int? minTemp,
  int? maxTemp,
}) =>
    DailyForecastStruct(
      dayOfWeek: dayOfWeek,
      iconUrl: iconUrl,
      minTemp: minTemp,
      maxTemp: maxTemp,
    );
