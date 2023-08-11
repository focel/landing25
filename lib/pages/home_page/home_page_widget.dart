import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import '/app_state.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

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
////
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 1), () {
        _scrollController.jumpTo(FFAppState().posicion);
      });
    });
////
    _scrollController.addListener(() {
// Update the "posicion" variable with the current scroll position
      setState(() {
        FFAppState().posicion = _scrollController.offset;
      });
    });

  }
//////
  void _scrollToTop() {
    _scrollController.animateTo(_scrollController.position.minScrollExtent,
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut);
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
      body: 'Nombres y Apellidos: ${_model.textController7.text}\nCédula o Pasaporte: ${_model.textController6.text}\nEmail: ${_model.textController8.text}\nNúmero Celular: ${_model.textController9.text}\nCiudad: ${_model.textController10.text}',
    );
    await launch('$mailtoLink');
  }




//////


  @override
  void dispose() {
    _model.dispose();
    _scrollController.dispose(); // Remember to dispose the ScrollController.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    double screenWidth = MediaQuery.of(context).size.width*(1/1366);
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 100*screenWidth,
                    decoration: BoxDecoration(
                      color: Color(0xFFAF182B),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(139*screenWidth, 16.68*screenWidth, 0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/Group_2424.png',
                              width: 230.02*screenWidth,
                              height: 65.79*screenWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(702*screenWidth, 32.92*screenWidth, 0, 0),
                          child: Container(
                            width: 32.93*screenWidth,
                            height: 32.93*screenWidth,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/Group_1683.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(16*screenWidth, 32.92*screenWidth, 0, 0),
                          child: Container(
                            width: 32.93*screenWidth,
                            height: 32.93*screenWidth,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/Group_1681.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(16*screenWidth, 32.92*screenWidth, 0, 0),
                          child: Container(
                            width: 32.93*screenWidth,
                            height: 32.93*screenWidth,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/Group_1682.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  children: <Widget>[SingleChildScrollView(
                  controller: _scrollController, // assign the ScrollController to your SingleChildScrollView
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  'assets/images/Mask_Group_1_fixed.png',
                                  width: MediaQuery.sizeOf(context).width,
                                  height: 670*screenWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    139*screenWidth, 290*screenWidth, 0, 0),
                                child: SelectableText(
                                  'Cumple el viaje\nde tus sueños',
                                  style: TextStyle(
                                    fontSize: 45*screenWidth,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.64, -0.51),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      139*screenWidth, 430*screenWidth, 0, 0),
                                  child: SelectableText(
                                    'La cobertura de',
                                    style: TextStyle(
                                      fontSize: 25*screenWidth,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                  ),
                              ),
                ////
                              Align(
                                alignment: AlignmentDirectional(-0.64, -0.51),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      139*screenWidth, 500*screenWidth, 0, 0),
                                  child: SelectableText(
                                    'te brinda la tranquilidad que \ntus vacaciones merecen:',
                                    style: TextStyle(
                                      fontSize: 29*screenWidth,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),

                ////

                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    139*screenWidth, 470*screenWidth, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/Group_1827.png',
                                    width: 235.74*screenWidth,
                                    height: 32.61*screenWidth,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    875*screenWidth, 147*screenWidth, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/Rectangle_277.png',
                                    width: 352*screenWidth,
                                    height: 414*screenWidth,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    951*screenWidth, 190*screenWidth, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/Te_asesoramos.png',
                                    width: 200*screenWidth,
                                    height: 30*screenWidth,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                width: 200*screenWidth,
                                decoration: BoxDecoration(),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    892*screenWidth, 238*screenWidth, 0, 0),
                                child: Container(
                                  width: 318*screenWidth,
                                  height: 38*screenWidth,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8*screenWidth, 0, 8*screenWidth, 0),
                                    child: Container(
                                      width: 318*screenWidth,
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
                                          labelStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFADB1B8),
                                          ),
                                          hintStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFADB1B8),
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedErrorBorder:
                                          OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          filled: true,
                                          fillColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                          suffixIcon: _model.textController1!
                                              .text.isNotEmpty
                                              ? InkWell(
                                            onTap: () async {
                                              _model.textController1
                                                  ?.clear();
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
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .textController1Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    892*screenWidth, 286*screenWidth, 0, 0),
                                child: Container(
                                  width: 318*screenWidth,
                                  height: 38*screenWidth,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8*screenWidth, 0, 8*screenWidth, 0),
                                    child: Container(
                                      width: 318*screenWidth,
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
                                          labelStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFADB1B8),
                                          ),
                                          hintStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFADB1B8),
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedErrorBorder:
                                          OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          filled: true,
                                          fillColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                          suffixIcon: _model.textController2!
                                              .text.isNotEmpty
                                              ? InkWell(
                                            onTap: () async {
                                              _model.textController2
                                                  ?.clear();
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
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .textController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    892*screenWidth, 334*screenWidth, 0, 0),
                                child: Container(
                                  width: 318*screenWidth,
                                  height: 38*screenWidth,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8*screenWidth, 0, 8*screenWidth, 0),
                                    child: Container(
                                      width: 318*screenWidth,
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
                                          labelStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFADB1B8),
                                          ),
                                          hintStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFADB1B8),
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedErrorBorder:
                                          OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          filled: true,
                                          fillColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                          suffixIcon: _model.textController3!
                                              .text.isNotEmpty
                                              ? InkWell(
                                            onTap: () async {
                                              _model.textController3
                                                  ?.clear();
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
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .textController3Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    892*screenWidth, 382*screenWidth, 0, 0),
                                child: Container(
                                  width: 318*screenWidth,
                                  height: 38*screenWidth,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8*screenWidth, 0, 8*screenWidth, 0),
                                    child: Container(
                                      width: 318*screenWidth,
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
                                          labelStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFADB1B8),
                                          ),
                                          hintStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFADB1B8),
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedErrorBorder:
                                          OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          filled: true,
                                          fillColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                          suffixIcon: _model.textController4!
                                              .text.isNotEmpty
                                              ? InkWell(
                                            onTap: () async {
                                              _model.textController4
                                                  ?.clear();
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
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .textController4Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    892*screenWidth, 430*screenWidth, 0, 0),
                                child: Container(
                                  width: 318*screenWidth,
                                  height: 38*screenWidth,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8*screenWidth, 0, 8*screenWidth, 0),
                                    child: Container(
                                      width: 318*screenWidth,
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
                                          labelStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFADB1B8),
                                          ),
                                          hintStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFADB1B8),
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedErrorBorder:
                                          OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          filled: true,
                                          fillColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                          suffixIcon: _model.textController5!
                                              .text.isNotEmpty
                                              ? InkWell(
                                            onTap: () async {
                                              _model.textController5
                                                  ?.clear();
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
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .textController5Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    921*screenWidth, 492*screenWidth, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    launchMailto();
                                  },
                                  text: 'Te Asesoramos',
                                  options: FFButtonOptions(
                                    width: 260*screenWidth,
                                    height: 40*screenWidth,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    color: Color(0xFFAF182B),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                    ),
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1*screenWidth,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 655*screenWidth, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.asset(
                                    'assets/images/Group_1868.png',
                                    width: MediaQuery.sizeOf(context).width,
                                    height: 447*screenWidth,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    215*screenWidth, 988*screenWidth, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/No_dejes_que_los_imprevistos_arruinen_lo_que_tanto_esperabas.Viaja_con_confianza_y_seguridad..png',
                                    width: 950*screenWidth,
                                    height: 96*screenWidth,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 1101*screenWidth, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.asset(
                                    'assets/images/HOMEb.png',
                                    width: MediaQuery.sizeOf(context).width,
                                    height: 3345*screenWidth,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    665*screenWidth, 18*screenWidth, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/Group_1900.png',
                                    width: 37*screenWidth,
                                    height: 11*screenWidth,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    1234*screenWidth, 322*screenWidth, 0, 0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('HomePage2');
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images/Component_6__1.png',
                                      width: 18.98*screenWidth,
                                      height: 51.09*screenWidth,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              ///////
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    1207.02*screenWidth, 1534*screenWidth, 0, 0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('HomePage1');
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images/Component_6__2.png',
                                      width: 19.98*screenWidth,
                                      height: 51.09*screenWidth,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
////
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    1207.02*screenWidth, 2681*screenWidth, 0, 0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('HomePage1');
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images/Component_6__2.png',
                                      width: 19.98*screenWidth,
                                      height: 51.09*screenWidth,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              //////
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    140*screenWidth, 4310*screenWidth, 0, 0),
                                child: Container(
                                  width: 32.93*screenWidth,
                                  height: 32.93*screenWidth,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/Group_1683.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    189*screenWidth, 4310*screenWidth, 0, 0),
                                child: Container(
                                  width: 32.93*screenWidth,
                                  height: 32.93*screenWidth,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/Group_1681.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    237*screenWidth, 4310*screenWidth, 0, 0),
                                child: Container(
                                  width: 32.93*screenWidth,
                                  height: 32.93*screenWidth,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/Group_1682.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    783.8*screenWidth, 3901*screenWidth, 0, 0),
                                child: Container(
                                  width: 352*screenWidth,
                                  height: 38*screenWidth,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 8*screenWidth, 0),
                                    child: Container(
                                      width: 352*screenWidth,
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
                                          labelText: 'Cédula o pasaporte',
                                          labelStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFADB1B8),
                                          ),
                                          hintStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFADB1B8),
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedErrorBorder:
                                          OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          filled: true,
                                          fillColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                          suffixIcon: _model.textController6!
                                              .text.isNotEmpty
                                              ? InkWell(
                                            onTap: () async {
                                              _model.textController6
                                                  ?.clear();
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
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .textController6Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    783.8*screenWidth, 3853*screenWidth, 0, 0),
                                child: Container(
                                  width: 352*screenWidth,
                                  height: 38*screenWidth,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 8*screenWidth, 0),
                                    child: Container(
                                      width: 352*screenWidth,
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
                                          labelText: 'Nombres y Apellidos',
                                          labelStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFADB1B8),
                                          ),
                                          hintStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFADB1B8),
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedErrorBorder:
                                          OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          filled: true,
                                          fillColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                          suffixIcon: _model.textController7!
                                              .text.isNotEmpty
                                              ? InkWell(
                                            onTap: () async {
                                              _model.textController7
                                                  ?.clear();
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
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .textController7Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    783.8*screenWidth, 3950*screenWidth, 0, 0),
                                child: Container(
                                  width: 352*screenWidth,
                                  height: 38*screenWidth,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 8*screenWidth, 0),
                                    child: Container(
                                      width: 352*screenWidth,
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
                                          labelStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFADB1B8),
                                          ),
                                          hintStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFADB1B8),
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedErrorBorder:
                                          OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          filled: true,
                                          fillColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                          suffixIcon: _model.textController8!
                                              .text.isNotEmpty
                                              ? InkWell(
                                            onTap: () async {
                                              _model.textController8
                                                  ?.clear();
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
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .textController8Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    783.8*screenWidth, 4000*screenWidth, 0, 0),
                                child: Container(
                                  width: 352*screenWidth,
                                  height: 38*screenWidth,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 8*screenWidth, 0),
                                    child: Container(
                                      width: 352*screenWidth,
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
                                          labelStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFADB1B8),
                                          ),
                                          hintStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFADB1B8),
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedErrorBorder:
                                          OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          filled: true,
                                          fillColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                          suffixIcon: _model.textController9!
                                              .text.isNotEmpty
                                              ? InkWell(
                                            onTap: () async {
                                              _model.textController9
                                                  ?.clear();
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
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .textController9Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    783.8*screenWidth, 4046*screenWidth, 0, 0),
                                child: Container(
                                  width: 352*screenWidth,
                                  height: 38*screenWidth,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 8*screenWidth, 0),
                                    child: Container(
                                      width: 352*screenWidth,
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
                                          labelStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFADB1B8),
                                          ),
                                          hintStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFADB1B8),
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedErrorBorder:
                                          OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 2*screenWidth,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          filled: true,
                                          fillColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                          suffixIcon: _model.textController10!
                                              .text.isNotEmpty
                                              ? InkWell(
                                            onTap: () async {
                                              _model.textController10
                                                  ?.clear();
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
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .textController10Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    951*screenWidth, 4106*screenWidth, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    launchMailto2();
                                  },
                                  text: 'Te Asesoramos',
                                  options: FFButtonOptions(
                                    width: 178*screenWidth,
                                    height: 38*screenWidth,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    color: Color(0xFFAF182B),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                    ),
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1*screenWidth,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
    /////

    ////
                            ],
                          ),
/////////


//////////
                        ],
                      ),
 ///////////////

 ///////
                   ],
                  ),
                ),
                    Visibility(
                      visible: (FFAppState().posicion >= 368*screenWidth && FFAppState().posicion <= 3467*screenWidth), // Show the button when scroll position is between 368 and 3467
                      child:Positioned(
                      left: 921.0*screenWidth,
                      top: 490.0*screenWidth,
                      child: SizedBox(
                        width: 260*screenWidth,
                        height: 38*screenWidth,
                        child: ElevatedButton(
                          onPressed: _scrollToTop, // This is the new method to scroll to top
                          child: Text(
                            'Te asesoramos',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFAF182B), // This is the background color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5), // This is the border radius
                            ),
                          ),
                        ),
                      ),
                    ),),
                  ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
