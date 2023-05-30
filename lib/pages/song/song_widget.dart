import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'song_model.dart';
export 'song_model.dart';

class SongWidget extends StatefulWidget {
  const SongWidget({
    Key? key,
    required this.author,
    required this.track,
  }) : super(key: key);

  final String? author;
  final String? track;

  @override
  _SongWidgetState createState() => _SongWidgetState();
}

class _SongWidgetState extends State<SongWidget> {
  late SongModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SongModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFF141414),
          endDrawer: Drawer(
            elevation: 16.0,
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 1.0,
                decoration: BoxDecoration(
                  color: Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(0.0),
                  shape: BoxShape.rectangle,
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 300.0, 20.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('HomePage');
                            },
                            text: 'Acerca de',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF00659D),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Color(0xFF00659D),
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 15.0, 20.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('HomePage');
                          },
                          text: 'Cerrar sesión',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF1E1E1E),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Color(0xFF00659D),
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Color(0xFF1E1E1E),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Text(
              'SB',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
          body: SafeArea(
            top: true,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF141414),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: MediaQuery.of(context).size.height * 0.85,
                      decoration: BoxDecoration(
                        color: Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            30.0, 30.0, 30.0, 30.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        widget.track!,
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        widget.author!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Color(0xFF323232),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  'Letra',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Darling, darling, oh, turn the lights back on now\nWatching, watching, as the credits all roll down\nCrying, crying, you know we\'re playing to a full house, house\nNo heroes, villains, one to blame\nWhile wilted roses fill the stage\nAnd the thrill, the thrill is gone\nOur debut was a masterpiece\nBut in the end for you and me\nOh, the show, it can\'t go on\nWe used to have it all, but now\'s our curtain call\nSo hold for the applause, oh\nAnd wave out to the crowd, and take our final bow\nOh, it\'s our time to go, but at least we stole the show\nAt least we stole the show\nAt least we stole the show\nAt least we stole the show\nAt least we stole the show\nAt least we stole the show\nDarling, darling, you know that we are sold out\nThis is fading, but the band plays on now\nWe\'re crying, crying, so let the velvet roll down, down\nNo heroes, villains, one to blame\nWhile wilted roses fill the stage\nAnd the thrill, the thrill is gone\nOur debut was a masterpiece\nOur lines we read so perfectly\nBut the show, it can\'t go on\nWe used to have it all, but now\'s our curtain call\nSo hold for the applause, oh\nAnd wave out to the crowd, and take our final bow\nOh, it\'s our time to go, but at least we stole the show\nAt least we stole the show\nAt least we stole the show\nAt least we stole the show\nStole the show</span></div><div jsname=\"U8S5sf\" class=\"ujudUb WRZytc\"><span jsname=\"YS01Ge\">At least we stole the show\nStole the show\nAt least we stole the show\n',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Darling, darling, oh, turn the lights back on now\nWatching, watching, as the credits all roll down\nCrying, crying, you know we\'re playing to a full house, house\nNo heroes, villains, one to blame\nWhile wilted roses fill the stage\nAnd the thrill, the thrill is gone\nOur debut was a masterpiece\nBut in the end for you and me\nOh, the show, it can\'t go on\nWe used to have it all, but now\'s our curtain call\nSo hold for the applause, oh\nAnd wave out to the crowd, and take our final bow\nOh, it\'s our time to go, but at least we stole the show\nAt least we stole the show\nAt least we stole the show\nAt least we stole the show\nAt least we stole the show\nAt least we stole the show\nDarling, darling, you know that we are sold out\nThis is fading, but the band plays on now\nWe\'re crying, crying, so let the velvet roll down, down\nNo heroes, villains, one to blame\nWhile wilted roses fill the stage\nAnd the thrill, the thrill is gone\nOur debut was a masterpiece\nOur lines we read so perfectly\nBut the show, it can\'t go on\nWe used to have it all, but now\'s our curtain call\nSo hold for the applause, oh\nAnd wave out to the crowd, and take our final bow\nOh, it\'s our time to go, but at least we stole the show\nAt least we stole the show\nAt least we stole the show\nAt least we stole the show\nStole the show</span></div><div jsname=\"U8S5sf\" class=\"ujudUb WRZytc\"><span jsname=\"YS01Ge\">At least we stole the show\nStole the show\nAt least we stole the show\n',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
