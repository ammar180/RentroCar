import 'package:rentro_car/features/home/widgets/car_card_big.dart';
import 'package:rentro_car/features/home/widgets/car_card_small.dart';
import 'package:rentro_car/utils/common/theme.dart';
import 'package:rentro_car/utils/customs/app_model.dart';
import 'package:rentro_car/utils/customs/app_utils.dart';
import 'package:flutter/material.dart';
import 'home_screen_model.dart';
export 'home_screen_model.dart';

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
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: AppTheme.of(context).secondaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(10.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
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
                    hintStyle: AppTheme.of(context).labelSmall.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: AppTheme.of(context).secondaryBackground,
                    contentPadding: EdgeInsets.all(14.0),
                    prefixIcon: Icon(
                      Icons.search_sharp,
                      color: AppTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                  ),
                  style: AppTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                        lineHeight: 2.0,
                      ),
                  maxLength: 25,
                  buildCounter: (context,
                          {required currentLength,
                          required isFocused,
                          maxLength}) =>
                      null,
                  cursorColor: AppTheme.of(context).primaryText,
                  validator: _model.searchBarFieldTextControllerValidator
                      .asValidator(context),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Top Rated Cars',
                    style: AppTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.carCard1Model,
                          updateCallback: () => setState(() {}),
                          child: CarCardWidget(),
                        ),
                        wrapWithModel(
                          model: _model.carCard2Model,
                          updateCallback: () => setState(() {}),
                          child: CarCardWidget(),
                        ),
                        wrapWithModel(
                          model: _model.carCard3Model,
                          updateCallback: () => setState(() {}),
                          child: CarCardWidget(),
                        ),
                      ].divide(SizedBox(width: 20.0)),
                    ),
                  ),
                ].divide(SizedBox(height: 12.0)),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Most Popular Cars',
                    style: AppTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.carCardBigModel1,
                          updateCallback: () => setState(() {}),
                          child: CarCardBigWidget(),
                        ),
                        wrapWithModel(
                          model: _model.carCardBigModel2,
                          updateCallback: () => setState(() {}),
                          child: CarCardBigWidget(),
                        ),
                        wrapWithModel(
                          model: _model.carCardBigModel3,
                          updateCallback: () => setState(() {}),
                          child: CarCardBigWidget(),
                        ),
                      ],
                    ),
                  ),
                ].divide(SizedBox(height: 12.0)),
              ),
            ].divide(SizedBox(height: 30.0)),
          ),
        ),
      ),
    );
  }
}
