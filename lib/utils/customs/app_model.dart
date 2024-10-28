import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class AppModel<W extends Widget> {
  // Initialization methods
  bool _isInitialized = false;
  void initState(BuildContext context);
  void _init(BuildContext context) {
    if (!_isInitialized) {
      initState(context);
      _isInitialized = true;
    }
    if (context.widget is W) _widget = context.widget as W;
  }

  // The widget associated with this model. This is useful for accessing the
  // parameters of the widget, for example.
  W? _widget;
  W? get widget => _widget;

  // Dispose methods
  // Whether to dispose this model when the corresponding widget is
  // disposed. By default this is true for pages and false for components,
  // as page/component models handle the disposal of their children.
  bool disposeOnWidgetDisposal = true;
  void dispose();
  void maybeDispose() {
    if (disposeOnWidgetDisposal) {
      dispose();
    }
    // Remove reference to widget for garbage collection purposes.
    _widget = null;
  }

  // Whether to update the containing page / component on updates.
  bool updateOnChange = false;
  // Function to call when the model receives an update.
  VoidCallback _updateCallback = () {};
  void onUpdate() => updateOnChange ? _updateCallback() : () {};
  AppModel setOnUpdate({
    bool updateOnChange = false,
    required VoidCallback onUpdate,
  }) =>
      this
        .._updateCallback = onUpdate
        ..updateOnChange = updateOnChange;
  // Update the containing page when this model received an update.
  void updatePage(VoidCallback callback) {
    callback();
    _updateCallback();
  }

  //////WidgetClassDebugData toWidgetClassDebugData();
  AppModel? parentModel;
  AppModel get rootModel {
    AppModel node = this;
    while (node.parentModel != null) {
      node = node.parentModel!;
    }
    return node;
  }

  bool? _isRouteVisible;
  bool get isRouteVisible => rootModel._isRouteVisible ?? false;
  set isRouteVisible(bool? value) => _isRouteVisible = value;
}

T createModel<T extends AppModel>(
  BuildContext context,
  T Function() defaultBuilder,
) {
  final model = context.read<T?>() ?? defaultBuilder();
  model._init(context);
  return model;
}
extension TextValidationExtensions on String? Function(BuildContext, String?)? {
  String? Function(String?)? asValidator(BuildContext context) =>
      this != null ? (val) => this!(context, val) : null;
}