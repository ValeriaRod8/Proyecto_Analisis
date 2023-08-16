import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'view_binnacle_model.dart';
export 'view_binnacle_model.dart';

class ViewBinnacleWidget extends StatefulWidget {
  const ViewBinnacleWidget({Key? key}) : super(key: key);

  @override
  _ViewBinnacleWidgetState createState() => _ViewBinnacleWidgetState();
}

class _ViewBinnacleWidgetState extends State<ViewBinnacleWidget>
    with TickerProviderStateMixin {
  late ViewBinnacleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 80),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewBinnacleModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'MIS BITACORAS',
            style: FlutterFlowTheme.of(context).headlineLarge,
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 18),
                      child: Text(
                        'BITACORAS | TOCA PARA VER MAS',
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation']!),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 44),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  offset: Offset(0, 1),
                                )
                              ],
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 44,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.asset(
                                          'assets/images/inground-pool.webp',
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Realizado por: Israel Rivera',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 0),
                                              child: Text(
                                                'Mie. Julio 4, 3:42pm',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  offset: Offset(0, 1),
                                )
                              ],
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 44,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.asset(
                                          'assets/images/inground-pool.webp',
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Realizado por: Israel Rivera',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 0),
                                              child: Text(
                                                'Mie. Julio 4, 3:42pm',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  offset: Offset(0, 1),
                                )
                              ],
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 44,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.asset(
                                          'assets/images/inground-pool.webp',
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Realizado por: Israel Rivera',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 0),
                                              child: Text(
                                                'Mie. Julio 4, 3:42pm',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  offset: Offset(0, 1),
                                )
                              ],
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 44,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.asset(
                                          'assets/images/inground-pool.webp',
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Realizado por: Israel Rivera',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 0),
                                              child: Text(
                                                'Mie. Julio 4, 3:42pm',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  offset: Offset(0, 1),
                                )
                              ],
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 44,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.asset(
                                          'assets/images/inground-pool.webp',
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Realizado por: Israel Rivera',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 0),
                                              child: Text(
                                                'Mie. Julio 4, 3:42pm',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
