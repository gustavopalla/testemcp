import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'task_page_widget.dart' show TaskPageWidget;
import 'package:flutter/material.dart';

class TaskPageModel extends FlutterFlowModel<TaskPageWidget> {
  ///  Local state fields for this page.

  String? newTaskTitle = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for taskInput widget.
  FocusNode? taskInputFocusNode;
  TextEditingController? taskInputTextController;
  String? Function(BuildContext, String?)? taskInputTextControllerValidator;
  // State field(s) for Checkbox widget.
  Map<TaskItemStruct, bool> checkboxValueMap1 = {};
  List<TaskItemStruct> get checkboxCheckedItems1 => checkboxValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<TaskItemStruct, bool> checkboxValueMap2 = {};
  List<TaskItemStruct> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    taskInputFocusNode?.dispose();
    taskInputTextController?.dispose();
  }
}
