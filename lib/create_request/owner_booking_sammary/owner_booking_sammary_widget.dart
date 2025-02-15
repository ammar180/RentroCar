import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/alert_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'owner_booking_sammary_model.dart';
export 'owner_booking_sammary_model.dart';

/// Page Name: Request to Book
/// Description:
/// This page allows users to review their booking details before confirming a
/// car rental.
///
/// It includes key information such as the selected car, trip dates, pickup
/// location, and payment summary.
///
/// UI Structure:
/// AppBar (Top Navigation)
///
/// Left-aligned Back Button (← Icon).
/// Center-aligned Title: "Request to Book".
/// Car Information Section
///
/// Car Image (Rounded Thumbnail, Left-Aligned).
/// Car Model Name ("Tesla Roadster"), bold font.
/// Car Owner Label in a smaller font.
/// Rating & Trip Count
/// Star icon ⭐ 5.00 (bold)
/// 139 Trips (lighter font).
/// Rental Price (EGP28.32/day) in bold.
/// Trip Date & Time Section
///
/// Start Date & Time (Left-Aligned) → End Date & Time (Right-Aligned).
/// Displayed in a pill-shaped card with a subtle shadow.
/// Pickup & Return Location
///
/// Pin Icon 📍
/// Location Details (e.g., "Giza, 6October city, D center Zahraa October").
/// Payment Details Section
///
/// Card Container with rounded corners and subtle shadow.
/// Breakdown of Pricing:
/// "720 X 7 days" → "5,040" (Regular font).
/// Total Amount: "EGP 5,040" (Bold).
/// Styling & Design Preferences:
/// Minimalist, clean UI with white background.
/// Soft rounded edges for input fields and cards.
/// Blue and black color scheme for contrast.
/// Consistent spacing between elements.
/// Mobile-friendly and responsive layout.
class OwnerBookingSammaryWidget extends StatefulWidget {
  const OwnerBookingSammaryWidget({
    super.key,
    required this.tripDocument,
    this.bookedCar,
  });

  final TripRecord? tripDocument;
  final CarRecord? bookedCar;

  @override
  State<OwnerBookingSammaryWidget> createState() =>
      _OwnerBookingSammaryWidgetState();
}

class _OwnerBookingSammaryWidgetState extends State<OwnerBookingSammaryWidget> {
  late OwnerBookingSammaryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OwnerBookingSammaryModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.bookedCar != null) {
        _model.carDoc = widget.bookedCar;
        safeSetState(() {});
      } else {
        _model.retrievedBorrowedCar =
            await CarRecord.getDocumentOnce(widget.tripDocument!.borrowedCar!);
        _model.carDoc = _model.retrievedBorrowedCar;
        safeSetState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(43.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                'p0nhswdx' /* Request Car Booking */,
              ),
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Open Sans',
                    letterSpacing: 0.0,
                  ),
            ),
            actions: [
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).success,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.tripDocument?.status?.name,
                      'unConfirmed',
                    ),
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ],
            centerTitle: false,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.network(
                                valueOrDefault<String>(
                                  _model.carDoc?.carPhotos.firstOrNull,
                                  'https://images.unsplash.com/photo-1510903117032-f1596c327647?w=800&h=800',
                                ),
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      '${_model.carDoc?.make} ${_model.carDoc?.model}',
                                      'BYD F3',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Open Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.star_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          _model.carDoc?.rate.toString(),
                                          '0.0',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'behww4ll' /* (139 trips) */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                  Text(
                                    formatNumber(
                                      _model.carDoc!.rentalFare,
                                      formatType: FormatType.custom,
                                      format: 'EGP #/day',
                                      locale: '',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                    ),
                  ),
                  if (widget.tripDocument?.status == Status.payDone)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('preparingInterview');
                        },
                        text: FFLocalizations.of(context).getText(
                          'avstwap7' /* Show Contract ! */,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'p8cfw7g9' /* Trip Dates */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'h0972ghd' /* Start Date */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        dateTimeFormat(
                                          "yMMMd",
                                          widget.tripDocument?.startDate,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        'Oct 15, 2025',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Open Sans',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        dateTimeFormat(
                                          "jm",
                                          widget.tripDocument?.startDate,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        '10:00 AM',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'p1nddpwm' /* End Date */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        dateTimeFormat(
                                          "yMMMd",
                                          widget.tripDocument?.endDate,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        'Oct 15, 2025',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Open Sans',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        dateTimeFormat(
                                          "jm",
                                          widget.tripDocument?.endDate,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        '10:00 AM',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ),
                  if (widget.tripDocument?.status == Status.payDone)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: StreamBuilder<UsersRecord>(
                            stream: UsersRecord.getDocument(
                                widget.tripDocument!.carBorrower!),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }

                              final columnUsersRecord = snapshot.data!;

                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'vpeg6syl' /* Renting Info */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          columnUsersRecord.displayName,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.location_on_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      Expanded(
                                        child:
                                            StreamBuilder<List<LocationRecord>>(
                                          stream: queryLocationRecord(
                                            queryBuilder: (locationRecord) =>
                                                locationRecord.where(
                                              'user',
                                              isEqualTo: widget
                                                  .tripDocument?.carOwner,
                                            ),
                                            singleRecord: true,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<LocationRecord>
                                                textLocationRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final textLocationRecord =
                                                textLocationRecordList
                                                        .isNotEmpty
                                                    ? textLocationRecordList
                                                        .first
                                                    : null;

                                            return Text(
                                              valueOrDefault<String>(
                                                '${textLocationRecord?.government}, ${textLocationRecord?.city}, ${textLocationRecord?.street}',
                                                'Giza, 6October city, D center Zahraa October',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                            );
                                          },
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.phone_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          columnUsersRecord.phoneNumber,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) => FFButtonWidget(
                                          onPressed: () async {
                                            await launchURL(
                                                'https://api.whatsapp.com/send?autoload=1&app_absent=0&phone=2${columnUsersRecord.phoneNumber}&text');
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(
                                                              dialogContext)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: AlertDialogWidget(
                                                      title: 'Open whatsapp ',
                                                      description:
                                                          'The application will redirect you to whatsapp to contact Car Owner, Are you sure?',
                                                      confirmCallback:
                                                          () async {
                                                        await launchURL(
                                                            'https://api.whatsapp.com/send?autoload=1&app_absent=0&phone=2${columnUsersRecord.phoneNumber}&text');
                                                      },
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'k79jq4m6' /* Contact Now */,
                                          ),
                                          icon: Icon(
                                            Icons.wechat_sharp,
                                            size: 15.0,
                                          ),
                                          options: FFButtonOptions(
                                            height: 36.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFF25D366),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '1i2086iv' /* Payment Summary */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${_model.carDoc?.rentalFare.toString()}  × ${functions.calculateDaysCount(widget.tripDocument!.startDate!.secondsSinceEpoch, widget.tripDocument!.endDate!.secondsSinceEpoch).toString()} days',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget.tripDocument?.totalPrice
                                        .toString(),
                                    '5,040',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '62cbx1li' /* Total Amount */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget.tripDocument?.totalPrice
                                        .toString(),
                                    '[total_price]',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ),
                  if (widget.tripDocument?.status != Status.payDone)
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Builder(
                            builder: (context) => Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) =>
                                    StreamBuilder<LocationRecord>(
                                  stream: LocationRecord.getDocument(
                                      currentUserDocument!.location!),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }

                                    final buttonLocationRecord = snapshot.data!;

                                    return FFButtonWidget(
                                      onPressed: () async {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: AlertDialogWidget(
                                                  title: 'Confirm Locaiton',
                                                  description:
                                                      'Note: the client will pickup and return the car on your location: ${'${buttonLocationRecord.government}, ${buttonLocationRecord.city}, ${buttonLocationRecord.street}'}',
                                                  confirmButton:
                                                      'Confrm Location',
                                                  cancelButton:
                                                      'Update Location',
                                                  confirmCallback: () async {},
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() =>
                                            _model.locationConfirmed = value));

                                        if (_model.locationConfirmed!) {
                                          await widget.tripDocument!.reference
                                              .update(createTripRecordData(
                                            status: Status.accepted,
                                          ));
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Response Send Successfully',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                            ),
                                          );

                                          context.pushNamed('MyCars');
                                        } else {
                                          context.pushNamed('edit_profile');
                                        }

                                        safeSetState(() {});
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'nhoo5ct3' /* Accept Booking */,
                                      ),
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 56.0,
                                        padding: EdgeInsets.all(8.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 2.0,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await widget.tripDocument!.reference
                                    .update(createTripRecordData(
                                  status: Status.rejected,
                                ));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Response Send Successfully',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).success,
                                  ),
                                );

                                context.pushNamed('MyCars');
                              },
                              text: FFLocalizations.of(context).getText(
                                'reyzydcr' /* Reject Booking */,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 56.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).error,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ].divide(SizedBox(height: 24.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
