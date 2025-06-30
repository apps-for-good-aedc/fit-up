import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'log_in_widget.dart' show LogInWidget;
import 'package:flutter/material.dart';

class LogInModel extends FlutterFlowModel<LogInWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailogin widget.
  FocusNode? emailoginFocusNode;
  TextEditingController? emailoginTextController;
  String? Function(BuildContext, String?)? emailoginTextControllerValidator;
  // State field(s) for passlogin widget.
  FocusNode? passloginFocusNode;
  TextEditingController? passloginTextController;
  late bool passloginVisibility;
  String? Function(BuildContext, String?)? passloginTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passloginVisibility = false;
  }

  @override
  void dispose() {
    emailoginFocusNode?.dispose();
    emailoginTextController?.dispose();

    passloginFocusNode?.dispose();
    passloginTextController?.dispose();
  }
}
