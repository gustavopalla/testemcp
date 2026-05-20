import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _tasks = prefs
              .getStringList('ff_tasks')
              ?.map((x) {
                try {
                  return TaskItemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _tasks;
    });
    _safeInit(() {
      _todoList = prefs
              .getStringList('ff_todoList')
              ?.map((x) {
                try {
                  return TaskItemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _todoList;
    });
    _safeInit(() {
      _inProgressList = prefs
              .getStringList('ff_inProgressList')
              ?.map((x) {
                try {
                  return TaskItemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _inProgressList;
    });
    _safeInit(() {
      _doneList = prefs
              .getStringList('ff_doneList')
              ?.map((x) {
                try {
                  return TaskItemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _doneList;
    });
    _safeInit(() {
      _currentCity = prefs.getString('ff_currentCity') ?? _currentCity;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  /// DSL app state tasks
  List<TaskItemStruct> _tasks = [];
  List<TaskItemStruct> get tasks => _tasks;
  set tasks(List<TaskItemStruct> value) {
    _tasks = value;
    prefs.setStringList('ff_tasks', value.map((x) => x.serialize()).toList());
  }

  void addToTasks(TaskItemStruct value) {
    tasks.add(value);
    prefs.setStringList('ff_tasks', _tasks.map((x) => x.serialize()).toList());
  }

  void removeFromTasks(TaskItemStruct value) {
    tasks.remove(value);
    prefs.setStringList('ff_tasks', _tasks.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTasks(int index) {
    tasks.removeAt(index);
    prefs.setStringList('ff_tasks', _tasks.map((x) => x.serialize()).toList());
  }

  void updateTasksAtIndex(
    int index,
    TaskItemStruct Function(TaskItemStruct) updateFn,
  ) {
    tasks[index] = updateFn(_tasks[index]);
    prefs.setStringList('ff_tasks', _tasks.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTasks(int index, TaskItemStruct value) {
    tasks.insert(index, value);
    prefs.setStringList('ff_tasks', _tasks.map((x) => x.serialize()).toList());
  }

  /// DSL app state todoList
  List<TaskItemStruct> _todoList = [];
  List<TaskItemStruct> get todoList => _todoList;
  set todoList(List<TaskItemStruct> value) {
    _todoList = value;
    prefs.setStringList(
        'ff_todoList', value.map((x) => x.serialize()).toList());
  }

  void addToTodoList(TaskItemStruct value) {
    todoList.add(value);
    prefs.setStringList(
        'ff_todoList', _todoList.map((x) => x.serialize()).toList());
  }

  void removeFromTodoList(TaskItemStruct value) {
    todoList.remove(value);
    prefs.setStringList(
        'ff_todoList', _todoList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTodoList(int index) {
    todoList.removeAt(index);
    prefs.setStringList(
        'ff_todoList', _todoList.map((x) => x.serialize()).toList());
  }

  void updateTodoListAtIndex(
    int index,
    TaskItemStruct Function(TaskItemStruct) updateFn,
  ) {
    todoList[index] = updateFn(_todoList[index]);
    prefs.setStringList(
        'ff_todoList', _todoList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTodoList(int index, TaskItemStruct value) {
    todoList.insert(index, value);
    prefs.setStringList(
        'ff_todoList', _todoList.map((x) => x.serialize()).toList());
  }

  /// DSL app state inProgressList
  List<TaskItemStruct> _inProgressList = [];
  List<TaskItemStruct> get inProgressList => _inProgressList;
  set inProgressList(List<TaskItemStruct> value) {
    _inProgressList = value;
    prefs.setStringList(
        'ff_inProgressList', value.map((x) => x.serialize()).toList());
  }

  void addToInProgressList(TaskItemStruct value) {
    inProgressList.add(value);
    prefs.setStringList('ff_inProgressList',
        _inProgressList.map((x) => x.serialize()).toList());
  }

  void removeFromInProgressList(TaskItemStruct value) {
    inProgressList.remove(value);
    prefs.setStringList('ff_inProgressList',
        _inProgressList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromInProgressList(int index) {
    inProgressList.removeAt(index);
    prefs.setStringList('ff_inProgressList',
        _inProgressList.map((x) => x.serialize()).toList());
  }

  void updateInProgressListAtIndex(
    int index,
    TaskItemStruct Function(TaskItemStruct) updateFn,
  ) {
    inProgressList[index] = updateFn(_inProgressList[index]);
    prefs.setStringList('ff_inProgressList',
        _inProgressList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInInProgressList(int index, TaskItemStruct value) {
    inProgressList.insert(index, value);
    prefs.setStringList('ff_inProgressList',
        _inProgressList.map((x) => x.serialize()).toList());
  }

  /// DSL app state doneList
  List<TaskItemStruct> _doneList = [];
  List<TaskItemStruct> get doneList => _doneList;
  set doneList(List<TaskItemStruct> value) {
    _doneList = value;
    prefs.setStringList(
        'ff_doneList', value.map((x) => x.serialize()).toList());
  }

  void addToDoneList(TaskItemStruct value) {
    doneList.add(value);
    prefs.setStringList(
        'ff_doneList', _doneList.map((x) => x.serialize()).toList());
  }

  void removeFromDoneList(TaskItemStruct value) {
    doneList.remove(value);
    prefs.setStringList(
        'ff_doneList', _doneList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDoneList(int index) {
    doneList.removeAt(index);
    prefs.setStringList(
        'ff_doneList', _doneList.map((x) => x.serialize()).toList());
  }

  void updateDoneListAtIndex(
    int index,
    TaskItemStruct Function(TaskItemStruct) updateFn,
  ) {
    doneList[index] = updateFn(_doneList[index]);
    prefs.setStringList(
        'ff_doneList', _doneList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDoneList(int index, TaskItemStruct value) {
    doneList.insert(index, value);
    prefs.setStringList(
        'ff_doneList', _doneList.map((x) => x.serialize()).toList());
  }

  /// DSL app state currentCity
  String _currentCity = '';
  String get currentCity => _currentCity;
  set currentCity(String value) {
    _currentCity = value;
    prefs.setString('ff_currentCity', value);
  }

  /// DSL app state isLoading
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
  }

  /// DSL app state hasError
  bool _hasError = false;
  bool get hasError => _hasError;
  set hasError(bool value) {
    _hasError = value;
  }

  /// DSL app state weatherCurrent
  CurrentWeatherStruct _weatherCurrent = CurrentWeatherStruct();
  CurrentWeatherStruct get weatherCurrent => _weatherCurrent;
  set weatherCurrent(CurrentWeatherStruct value) {
    _weatherCurrent = value;
  }

  void updateWeatherCurrentStruct(Function(CurrentWeatherStruct) updateFn) {
    updateFn(_weatherCurrent);
  }

  /// DSL app state weatherHourly
  List<HourlyForecastStruct> _weatherHourly = [];
  List<HourlyForecastStruct> get weatherHourly => _weatherHourly;
  set weatherHourly(List<HourlyForecastStruct> value) {
    _weatherHourly = value;
  }

  void addToWeatherHourly(HourlyForecastStruct value) {
    weatherHourly.add(value);
  }

  void removeFromWeatherHourly(HourlyForecastStruct value) {
    weatherHourly.remove(value);
  }

  void removeAtIndexFromWeatherHourly(int index) {
    weatherHourly.removeAt(index);
  }

  void updateWeatherHourlyAtIndex(
    int index,
    HourlyForecastStruct Function(HourlyForecastStruct) updateFn,
  ) {
    weatherHourly[index] = updateFn(_weatherHourly[index]);
  }

  void insertAtIndexInWeatherHourly(int index, HourlyForecastStruct value) {
    weatherHourly.insert(index, value);
  }

  /// DSL app state weatherDaily
  List<DailyForecastStruct> _weatherDaily = [];
  List<DailyForecastStruct> get weatherDaily => _weatherDaily;
  set weatherDaily(List<DailyForecastStruct> value) {
    _weatherDaily = value;
  }

  void addToWeatherDaily(DailyForecastStruct value) {
    weatherDaily.add(value);
  }

  void removeFromWeatherDaily(DailyForecastStruct value) {
    weatherDaily.remove(value);
  }

  void removeAtIndexFromWeatherDaily(int index) {
    weatherDaily.removeAt(index);
  }

  void updateWeatherDailyAtIndex(
    int index,
    DailyForecastStruct Function(DailyForecastStruct) updateFn,
  ) {
    weatherDaily[index] = updateFn(_weatherDaily[index]);
  }

  void insertAtIndexInWeatherDaily(int index, DailyForecastStruct value) {
    weatherDaily.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
