import '../../app_state.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page2_model.dart';
export 'home_page2_model.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';


class HomePage2RWidget extends StatefulWidget {
  const HomePage2RWidget({Key? key}) : super(key: key);

  @override
  _HomePage2RWidgetState createState() => _HomePage2RWidgetState();
}

class _HomePage2RWidgetState extends State<HomePage2RWidget> {
  late HomePage2RModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePage2RModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    _model.textController4 ??= TextEditingController();
    _model.textController5 ??= TextEditingController();
    _model.textController6 ??= TextEditingController();
    _model.textController7 ??= TextEditingController();
    _model.textController8 ??= TextEditingController();
    _model.textController9 ??= TextEditingController();
    _model.textController10 ??= TextEditingController();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      Future.delayed(Duration(milliseconds: 200), () {
        _scrollController.jumpTo(FFAppState().posicion);
      });
    });
    _scrollController.addListener(() {
      // Update the "posicion" variable with the current scroll position
      setState(() {
        FFAppState().posicion = _scrollController.offset;
      });
    });

  }
//////
  launchMailto() async {
    final mailtoLink = Mailto(
      to: [
        'jalarcon@mavesa.com.ec',
        'pchalem@qualityseguros.com.ec',
        'copy@gestionpublicidad.com',
      ],
      subject: 'Formulario enviado',
      // body: 'Nombres y Apellidos: ${_model.textController1.text}\nCédula o Pasaporte: ${_model.textController2.text}',
      body: 'Nombres y Apellidos: ${_model.textController1.text}\nCédula o Pasaporte: ${_model.textController2.text}\nEmail: ${_model.textController3.text}\nNúmero Celular: ${_model.textController4.text}\nCiudad: ${_model.textController5.text}',
    );
    await launch('$mailtoLink');
  }

  launchMailto2() async {
    final mailtoLink = Mailto(
      to: [
        'jalarcon@mavesa.com.ec',
        'pchalem@qualityseguros.com.ec',
        'copy@gestionpublicidad.com',
      ],
      subject: 'Formulario enviado',
      // body: 'Nombres y Apellidos: ${_model.textController1.text}\nCédula o Pasaporte: ${_model.textController2.text}',
      body: 'Nombres y Apellidos: ${_model.textController6.text}\nCédula o Pasaporte: ${_model.textController7.text}\nEmail: ${_model.textController8.text}\nNúmero Celular: ${_model.textController9.text}\nCiudad: ${_model.textController10.text}',
    );
    await launch('$mailtoLink');
  }




//////
  @override
  void dispose() {
    _model.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    double screenWidth = MediaQuery.of(context).size.width*(1/375);
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        'assets/imagesr/HOME_-_responsive__1.png',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 9362.0*screenWidth,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(57.0*screenWidth, 725.0*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 260.0*screenWidth,
                        height: 38.0*screenWidth,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0*screenWidth, 0.0, 8.0*screenWidth, 0.0),
                          child: Container(
                            width: 318.0*screenWidth,
                            child: TextFormField(
                              controller: _model.textController1,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController1',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Nombres y Apellidos',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFADB1B8),
                                    ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFADB1B8),
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                suffixIcon:
                                    _model.textController1!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textController1?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFFEFE339),
                                              size: 22,
                                            ),
                                          )
                                        : null,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(57.0*screenWidth, 773.0*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 260.0*screenWidth,
                        height: 38.0*screenWidth,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0*screenWidth, 0.0, 8.0*screenWidth, 0.0),
                          child: Container(
                            width: 318.0*screenWidth,
                            child: TextFormField(
                              controller: _model.textController2,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController2',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Cédula o pasaporte',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFADB1B8),
                                    ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFADB1B8),
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                suffixIcon:
                                    _model.textController2!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textController2?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFFEFE339),
                                              size: 22,
                                            ),
                                          )
                                        : null,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(57.0*screenWidth, 821.0*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 260.0*screenWidth,
                        height: 38.0*screenWidth,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0*screenWidth, 0.0, 8.0*screenWidth, 0.0),
                          child: Container(
                            width: 318.0*screenWidth,
                            child: TextFormField(
                              controller: _model.textController3,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController3',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFADB1B8),
                                    ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFADB1B8),
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                suffixIcon:
                                    _model.textController3!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textController3?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFFEFE339),
                                              size: 22,
                                            ),
                                          )
                                        : null,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController3Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(57.0*screenWidth, 869.0*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 260.0*screenWidth,
                        height: 38.0*screenWidth,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0*screenWidth, 0.0, 8.0*screenWidth, 0.0),
                          child: Container(
                            width: 318.0*screenWidth,
                            child: TextFormField(
                              controller: _model.textController4,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController4',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Número celular',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFADB1B8),
                                    ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFADB1B8),
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                suffixIcon:
                                    _model.textController4!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textController4?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFFEFE339),
                                              size: 22,
                                            ),
                                          )
                                        : null,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController4Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(57.0*screenWidth, 917.0*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 260.0*screenWidth,
                        height: 38.0*screenWidth,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0*screenWidth, 0.0, 8.0*screenWidth, 0.0),
                          child: Container(
                            width: 318.0*screenWidth,
                            child: TextFormField(
                              controller: _model.textController5,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController5',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Ciudad',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFADB1B8),
                                    ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFADB1B8),
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                suffixIcon:
                                    _model.textController5!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textController5?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFFEFE339),
                                              size: 22,
                                            ),
                                          )
                                        : null,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController5Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(58.0*screenWidth, 969.0*screenWidth, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          launchMailto();

                        },
                        text: 'Cotiza sin compromiso',
                        options: FFButtonOptions(
                          width: 260.0*screenWidth,
                          height: 40.0*screenWidth,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFAF182B),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0*screenWidth,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          122.9*screenWidth, 9074.78*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 32.93*screenWidth,
                        height: 32.93*screenWidth,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/imagesr/Group_1683.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          171.8*screenWidth, 9074.78*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 32.93*screenWidth,
                        height: 32.93*screenWidth,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/imagesr/Group_1681.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          219.8*screenWidth, 9074.78*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 32.93*screenWidth,
                        height: 32.93*screenWidth,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/imagesr/Group_1682.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          223.8*screenWidth, 29.52*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 32.93*screenWidth,
                        height: 32.93*screenWidth,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/imagesr/Group_1683.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          272.8*screenWidth, 29.52*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 32.93*screenWidth,
                        height: 32.93*screenWidth,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/imagesr/Group_1681.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          320.8*screenWidth, 29.52*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 32.93*screenWidth,
                        height: 32.93*screenWidth,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/imagesr/Group_1682.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          37.0*screenWidth, 8493.91*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 303.0*screenWidth,
                        height: 38.0*screenWidth,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0*screenWidth, 0.0, 8.0*screenWidth, 0.0),
                          child: Container(
                            width: 318.0*screenWidth,
                            child: TextFormField(
                              controller: _model.textController6,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController6',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Nombres y Apellidos',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFADB1B8),
                                    ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFADB1B8),
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                suffixIcon:
                                    _model.textController6!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textController6?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFFEFE339),
                                              size: 22,
                                            ),
                                          )
                                        : null,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController6Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          37.0*screenWidth, 8541.91*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 303.0*screenWidth,
                        height: 38.0*screenWidth,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0*screenWidth, 0.0, 8.0*screenWidth, 0.0),
                          child: Container(
                            width: 318.0*screenWidth,
                            child: TextFormField(
                              controller: _model.textController7,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController7',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Cédula o pasaporte',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFADB1B8),
                                    ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFADB1B8),
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                suffixIcon:
                                    _model.textController7!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textController7?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFFEFE339),
                                              size: 22,
                                            ),
                                          )
                                        : null,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController7Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          37.0*screenWidth, 8589.91*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 303.0*screenWidth,
                        height: 38.0*screenWidth,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0*screenWidth, 0.0, 8.0*screenWidth, 0.0),
                          child: Container(
                            width: 318.0*screenWidth,
                            child: TextFormField(
                              controller: _model.textController8,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController8',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFADB1B8),
                                    ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFADB1B8),
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                suffixIcon:
                                    _model.textController8!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textController8?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFFEFE339),
                                              size: 22,
                                            ),
                                          )
                                        : null,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController8Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          37.0*screenWidth, 8637.91*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 303.0*screenWidth,
                        height: 38.0*screenWidth,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0*screenWidth, 0.0, 8.0*screenWidth, 0.0),
                          child: Container(
                            width: 318.0*screenWidth,
                            child: TextFormField(
                              controller: _model.textController9,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController9',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Número celular',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFADB1B8),
                                    ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFADB1B8),
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                suffixIcon:
                                    _model.textController9!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textController9?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFFEFE339),
                                              size: 22,
                                            ),
                                          )
                                        : null,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController9Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          37.0*screenWidth, 8685.91*screenWidth, 0.0, 0.0),
                      child: Container(
                        width: 303.0*screenWidth,
                        height: 38.0*screenWidth,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0*screenWidth, 0.0, 8.0*screenWidth, 0.0),
                          child: Container(
                            width: 318.0*screenWidth,
                            child: TextFormField(
                              controller: _model.textController10,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController10',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Ciudad',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFADB1B8),
                                    ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFADB1B8),
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0*screenWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                suffixIcon:
                                    _model.textController10!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textController10?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFFEFE339),
                                              size: 22,
                                            ),
                                          )
                                        : null,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController10Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          58.0*screenWidth, 8750.91*screenWidth, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          launchMailto2();

                        },
                        text: 'Cotiza sin compromiso',
                        options: FFButtonOptions(
                          width: 260.0*screenWidth,
                          height: 40.0*screenWidth,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFAF182B),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0*screenWidth,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          41.62*screenWidth, 421.91*screenWidth, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('HomePage');
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/imagesr/Path_2620.png',
                            width: 19.98*screenWidth,
                            height: 51.09*screenWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          41.62*screenWidth, 2876.91*screenWidth, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('HomePageR');
                        },

                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('HomePageR');
                        },


                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/imagesr/Path_2622.png',
                          width: 19.98*screenWidth,
                          height: 51.09*screenWidth,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          41.62*screenWidth, 5251.5*screenWidth, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/imagesr/Path_2622.png',
                          width: 19.98*screenWidth,
                          height: 51.09*screenWidth,
                          fit: BoxFit.cover,
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
    );
  }
}
