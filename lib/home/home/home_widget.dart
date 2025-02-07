import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/car_card/car_card_widget.dart';
import '/home/car_card_big/car_card_big_widget.dart';
import 'package:flutter/material.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    _model.searchBarFieldTextController ??= TextEditingController();
    _model.searchBarFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(10.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            actions: const [],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 335.0,
                child: TextFormField(
                  controller: _model.searchBarFieldTextController,
                  focusNode: _model.searchBarFieldFocusNode,
                  autofocus: false,
                  textCapitalization: TextCapitalization.none,
                  textInputAction: TextInputAction.search,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Search any Car....',
                    hintStyle: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Open Sans',
                          letterSpacing: 0.0,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x8914181B),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryText,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    contentPadding: const EdgeInsets.all(14.0),
                    prefixIcon: Icon(
                      Icons.search_sharp,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        letterSpacing: 0.0,
                        lineHeight: 2.0,
                      ),
                  maxLength: 25,
                  buildCounter: (context,
                          {required currentLength,
                          required isFocused,
                          maxLength}) =>
                      null,
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator: _model.searchBarFieldTextControllerValidator
                      .asValidator(context),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.carCard1Model,
                          updateCallback: () => safeSetState(() {}),
                          child: const CarCardWidget(),
                        ),
                        wrapWithModel(
                          model: _model.carCard2Model,
                          updateCallback: () => safeSetState(() {}),
                          child: const CarCardWidget(),
                        ),
                        wrapWithModel(
                          model: _model.carCard3Model,
                          updateCallback: () => safeSetState(() {}),
                          child: const CarCardWidget(),
                        ),
                      ].divide(const SizedBox(width: 20.0)),
                    ),
                  ),
                ].divide(const SizedBox(height: 12.0)),
              ),
              Container(
                height: 490.4,
                decoration: const BoxDecoration(),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Top Rated Cars',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                      wrapWithModel(
                        model: _model.carCardBigModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: const CarCardBigWidget(),
                      ),
                      wrapWithModel(
                        model: _model.carCardBigModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: const CarCardBigWidget(),
                      ),
                      wrapWithModel(
                        model: _model.carCardBigModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: const CarCardBigWidget(),
                      ),
                    ].divide(const SizedBox(height: 10.0)),
                  ),
                ),
              ),
              Text(
                'Most Popular Cars',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(const SizedBox(height: 30.0)),
          ),
        ),
      ),
    );
  }
}
