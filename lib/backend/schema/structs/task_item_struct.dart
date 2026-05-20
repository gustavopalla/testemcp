// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct TaskItem
class TaskItemStruct extends BaseStruct {
  TaskItemStruct({
    /// TaskItem.title
    String? title,

    /// TaskItem.done
    bool? done,
  })  : _title = title,
        _done = done;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "done" field.
  bool? _done;
  bool get done => _done ?? false;
  set done(bool? val) => _done = val;

  bool hasDone() => _done != null;

  static TaskItemStruct fromMap(Map<String, dynamic> data) => TaskItemStruct(
        title: data['title'] as String?,
        done: data['done'] as bool?,
      );

  static TaskItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? TaskItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'done': _done,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'done': serializeParam(
          _done,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TaskItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      TaskItemStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        done: deserializeParam(
          data['done'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TaskItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TaskItemStruct &&
        title == other.title &&
        done == other.done;
  }

  @override
  int get hashCode => const ListEquality().hash([title, done]);
}

TaskItemStruct createTaskItemStruct({
  String? title,
  bool? done,
}) =>
    TaskItemStruct(
      title: title,
      done: done,
    );
