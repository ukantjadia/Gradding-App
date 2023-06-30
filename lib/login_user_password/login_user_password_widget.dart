import 'package:intl_phone_field/intl_phone_field.dart';

import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_user_password_model.dart';
export 'login_user_password_model.dart';

class LoginUserPasswordWidget extends StatefulWidget {
  const LoginUserPasswordWidget({
    Key? key,
    String? mobileNoLogin,
  })  : this.mobileNoLogin = mobileNoLogin ?? '0000000000',
        super(key: key);

  final String mobileNoLogin;

  @override
  _LoginUserPasswordWidgetState createState() =>
      _LoginUserPasswordWidgetState();
}

class _LoginUserPasswordWidgetState extends State<LoginUserPasswordWidget> {
  late LoginUserPasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  late dynamic phone_number = "00";
  late dynamic countryName = "00";
  late dynamic countryCode = "91";

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginUserPasswordModel());

    _model.textController1 ??= TextEditingController(text: '91');
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    _model.textController4 ??= TextEditingController();
    _model.textController5 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: Text(
                    'Login to Continue',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Heebo',
                          color: Color(0xFF24292D),
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 40.0),
                  child: Text(
                    'Your hassle-free journey to studying abroad start here!',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Heebo',
                          color: Color(0xFF747579),
                          fontSize: 16.0,
                        ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.height * 0.44,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F7F9),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Align(
                            alignment: Alignment(0.0, 0),
                            child: FlutterFlowButtonTabBar(
                              useToggleButtonStyle: false,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Heebo',
                                    fontSize: 16.0,
                                  ),
                              unselectedLabelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Heebo',
                                    fontSize: 16.0,
                                  ),
                              labelColor: Color(0xFF066AC9),
                              unselectedLabelColor: Color(0xFF747579),
                              backgroundColor: Colors.white,
                              unselectedBackgroundColor: Color(0xFFF5F7F9),
                              borderColor: Colors.white,
                              unselectedBorderColor: Color(0xFFF3F7FA),
                              borderWidth: 0.0,
                              borderRadius: 40.0,
                              elevation: 0.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  2.0, 2.0, 2.0, 2.0),
                              tabs: [
                                Tab(
                                  text: 'Mobile Number',
                                ),
                                Tab(
                                  text: 'Email',
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              KeepAliveWidgetWrapper(
                                builder: (context) => Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // Padding(
                                            //   padding: EdgeInsetsDirectional
                                            //       .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                            //   child: Container(
                                            //     width: 46.0,
                                            //     child: TextFormField(
                                            //       controller:
                                            //           _model.textController1,
                                            //       textCapitalization:
                                            //           TextCapitalization.none,
                                            //       obscureText: false,
                                            //       decoration: InputDecoration(
                                            //         labelStyle: FlutterFlowTheme
                                            //                 .of(context)
                                            //             .labelMedium
                                            //             .override(
                                            //               fontFamily: 'Heebo',
                                            //               fontSize: 16.0,
                                            //             ),
                                            //         hintText: 'fl +91',
                                            //         enabledBorder:
                                            //             UnderlineInputBorder(
                                            //           borderSide: BorderSide(
                                            //             color:
                                            //                 FlutterFlowTheme.of(
                                            //                         context)
                                            //                     .border,
                                            //             width: 2.0,
                                            //           ),
                                            //           borderRadius:
                                            //               BorderRadius.circular(
                                            //                   8.0),
                                            //         ),
                                            //         focusedBorder:
                                            //             UnderlineInputBorder(
                                            //           borderSide: BorderSide(
                                            //             color:
                                            //                 FlutterFlowTheme.of(
                                            //                         context)
                                            //                     .primary,
                                            //             width: 2.0,
                                            //           ),
                                            //           borderRadius:
                                            //               BorderRadius.circular(
                                            //                   8.0),
                                            //         ),
                                            //         errorBorder:
                                            //             UnderlineInputBorder(
                                            //           borderSide: BorderSide(
                                            //             color:
                                            //                 FlutterFlowTheme.of(
                                            //                         context)
                                            //                     .error,
                                            //             width: 2.0,
                                            //           ),
                                            //           borderRadius:
                                            //               BorderRadius.circular(
                                            //                   8.0),
                                            //         ),
                                            //         focusedErrorBorder:
                                            //             UnderlineInputBorder(
                                            //           borderSide: BorderSide(
                                            //             color:
                                            //                 FlutterFlowTheme.of(
                                            //                         context)
                                            //                     .error,
                                            //             width: 2.0,
                                            //           ),
                                            //           borderRadius:
                                            //               BorderRadius.circular(
                                            //                   8.0),
                                            //         ),
                                            //       ),
                                            //       style: FlutterFlowTheme.of(
                                            //               context)
                                            //           .bodyMedium
                                            //           .override(
                                            //             fontFamily: 'Heebo',
                                            //             fontSize: 16.0,
                                            //           ),
                                            //       keyboardType:
                                            //           TextInputType.number,
                                            //       validator: _model
                                            //           .textController1Validator
                                            //           .asValidator(context),
                                            //       inputFormatters: [
                                            //         FilteringTextInputFormatter
                                            //             .allow(RegExp('[0-9]'))
                                            //       ],
                                            //     ),
                                            //   ),
                                            // ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 8.0, 0.0),
                                                child: Container(
                                                  width: 46.0,
                                                  child: IntlPhoneField(
//               flagsButtonPadding: const EdgeInsets.all(8),
        
                                                    dropdownIconPosition:
                                                        IconPosition.trailing,
                                                    // showDropdownIcon: false,
                                                    // disableLengthCheck: true,
                                                    controller:
                                                        _model.textController2,
                                                    // textCapitalization:
                                                    //     TextCapitalization.none,
                                                    obscureText: false,
                                                    initialCountryCode: 'IN',
                                                    // IntlPhoneField()
                                                      // disableAutoFillHints:
                                                      
                                                    decoration: InputDecoration(
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Heebo',
                                                                fontSize: 16.0,
                                                              ),
                                                      hintText:
                                                          'Enter Mobile No',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Heebo',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .textFieldText,
                                                                fontSize: 16.0,
                                                              ),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .border,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Heebo',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 16.0,
                                                        ),
                                                    keyboardType:
                                                        TextInputType.phone,
                                                    onChanged: (phone) {
                                                      // validator:
                                                      _model
                                                          .textController2Validator
                                                          .asValidator(context);
                                                      phone_number =
                                                          phone.completeNumber;

                                                      // print(phone.completeNumber);
                                                    },
                                                    onSaved: (newValue) {
                                                      _model.textController2
                                                          .text = phone_number;
                                                    },

                                                    onCountryChanged:
                                                        (country) {
                                                      countryName =
                                                          country.name;
                                                      countryCode =
                                                          country.code;
                                                      _model.textController1
                                                              .text =
                                                          country.dialCode;

                                                      // print(
                                                      //     'Country changed to: ' +
                                                      //         country.name);
                                                    },

                                                    inputFormatters: [
                                                      FilteringTextInputFormatter
                                                          .allow(
                                                              RegExp('[0-9]'))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Form(
                                                  key: _model.formKey3,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                6.0, 0.0),
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              1.0,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textController3,
                                                        obscureText: !_model
                                                            .passwordVisibility1,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Heebo',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                          hintText: 'Password',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Heebo',
                                                                    color: Color(
                                                                        0x74757940),
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .border,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 0.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 0.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                          suffixIcon: InkWell(
                                                            onTap: () =>
                                                                setState(
                                                              () => _model
                                                                      .passwordVisibility1 =
                                                                  !_model
                                                                      .passwordVisibility1,
                                                            ),
                                                            focusNode: FocusNode(
                                                                skipTraversal:
                                                                    true),
                                                            child: Icon(
                                                              _model.passwordVisibility1
                                                                  ? Icons
                                                                      .visibility_outlined
                                                                  : Icons
                                                                      .visibility_off_outlined,
                                                              size: 22,
                                                            ),
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Heebo',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        keyboardType:
                                                            TextInputType
                                                                .visiblePassword,
                                                        validator: _model
                                                            .textController3Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        'passwordResetLoginMobile',
                                                        queryParameters: {
                                                          'loginToResetPlaceHolder':
                                                              serializeParam(
                                                            'Enter Mobile No',
                                                            ParamType.String,
                                                          ),
                                                          'loginToResetRichText':
                                                              serializeParam(
                                                            'mobile no.',
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Text(
                                                      'Forgot Password?',
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Heebo',
                                                            color: Color(
                                                                0xFF066AC9),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 30.0, 4.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if (_model.textController1.text !=
                                                '') {
                                              if (_model.textController2.text !=
                                                  '') {
                                                if (_model
                                                        .textController3.text !=
                                                    '') {
                                                  context.pushNamed(
                                                    'HomePage',
                                                    queryParameters: {
                                                      'userName':
                                                          serializeParam(
                                                        _model.textController2
                                                            .text,
                                                        ParamType.String,
                                                      ),
                                                      'countryCode':
                                                          serializeParam(
                                                        _model.textController1
                                                            .text,
                                                        ParamType.String,
                                                      ),
                                                      'countryName':
                                                          serializeParam(
                                                        _model.textController1
                                                            .text,
                                                        ParamType.String,
                                                      ),
                                                      'password':
                                                          serializeParam(
                                                        _model.textController5
                                                            .text,
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        content: Text(
                                                            'Password Cannot be Empty'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                }
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      content: Text(
                                                          'Mobile no Cannot be Empty'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              }
                                            } else {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    content: Text(
                                                        'Country Code Cannot be Empty'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text('Ok'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            }
                                          },
                                          text: 'Continue',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 50.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Heebo',
                                                      color: Colors.white,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(9.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              KeepAliveWidgetWrapper(
                                builder: (context) => Container(
                                  width: 100.0,
                                  height:
                                      MediaQuery.of(context).size.width * 1.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 25.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Form(
                                                key: _model.formKey1,
                                                autovalidateMode:
                                                    AutovalidateMode.always,
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.14,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .textController4,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Heebo',
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                        hintText:
                                                            'Enter Email Id',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Heebo',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .textFieldText,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Heebo',
                                                            color: Colors.black,
                                                            fontSize: 16.0,
                                                          ),
                                                      keyboardType:
                                                          TextInputType
                                                              .emailAddress,
                                                      validator: _model
                                                          .textController4Validator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Form(
                                                  key: _model.formKey2,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .textController5,
                                                      obscureText: !_model
                                                          .passwordVisibility2,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Heebo',
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                        hintText: 'Password',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Heebo',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .textFieldText,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        suffixIcon: InkWell(
                                                          onTap: () => setState(
                                                            () => _model
                                                                    .passwordVisibility2 =
                                                                !_model
                                                                    .passwordVisibility2,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                                  true),
                                                          child: Icon(
                                                            _model.passwordVisibility2
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            size: 22,
                                                          ),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Heebo',
                                                            fontSize: 16.0,
                                                          ),
                                                      validator: _model
                                                          .textController5Validator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 3.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  'passwordResetLoginEmail',
                                                  queryParameters: {
                                                    'loginToResetPlaceHolder':
                                                        serializeParam(
                                                      'Enter Email Id',
                                                      ParamType.String,
                                                    ),
                                                    'loginToResetRichText':
                                                        serializeParam(
                                                      'email id',
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Text(
                                                'Forgot Password?',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Heebo',
                                                          color:
                                                              Color(0xFF066AC9),
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 30.0, 4.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if (_model.textController4.text !=
                                                '') {
                                              if (_model.textController5.text !=
                                                  '') {
                                                setState(() {
                                                  FFAppState().emailIdLogin =
                                                      _model
                                                          .textController4.text;
                                                });

                                                context.pushNamed(
                                                  'HomePage',
                                                  queryParameters: {
                                                    'userName': serializeParam(
                                                      _model
                                                          .textController2.text,
                                                      ParamType.String,
                                                    ),
                                                    'countryCode':
                                                        serializeParam(
                                                      _model
                                                          .textController1.text,
                                                      ParamType.String,
                                                    ),
                                                    'countryName':
                                                        serializeParam(
                                                      _model
                                                          .textController1.text,
                                                      ParamType.String,
                                                    ),
                                                    'password': serializeParam(
                                                      _model
                                                          .textController5.text,
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      content: Text(
                                                          'Password cannot be Empty'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              }
                                            } else {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    content: Text(
                                                        'Emain Id connot be Empty'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text('Ok'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            }
                                          },
                                          text: 'Continue',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            // width: double.infinity,
                                            height: 50.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Heebo',
                                                      color: Colors.white,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(9.0),
                                          ),
                                        ),
                                      ),
                                    ],
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
                Divider(
                  height: 50.0,
                  thickness: 10.0,
                  color: Colors.white,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 100.0,
                        constraints: BoxConstraints(
                          minWidth: 60.0,
                          minHeight: 1.0,
                          maxWidth: 90.0,
                          maxHeight: 1.0,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).border,
                          border: Border.all(
                            color: Color(0x40747579),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                      child: Text(
                        'You can Connect with',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Heebo',
                              color: Color(0xFF747579),
                            ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 100.0,
                        constraints: BoxConstraints(
                          minWidth: 60.0,
                          minHeight: 0.0,
                          maxWidth: 90.0,
                          maxHeight: 1.0,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).border,
                          border: Border.all(
                            color: Color(0x40747579),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.network(
                          'https://ukantjadia.me/gradding/facebookLogo.svg',
                          width: 54.0,
                          height: 54.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: SvgPicture.network(
                            'https://ukantjadia.me/gradding/googleLogo.svg',
                            width: 54.0,
                            height: 54.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.network(
                          'https://ukantjadia.me/gradding/appleLogo.svg',
                          width: 54.0,
                          height: 54.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don’t have an account?',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Heebo',
                                    fontSize: 15.0,
                                  ),
                            ),
                            TextSpan(
                              text: ' Sign Up Here',
                              style: TextStyle(
                                color: Color(0xFF066AC9),
                                fontSize: 15.0,
                              ),
                              mouseCursor: SystemMouseCursors.click,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  context.pushNamed(
                                    'loginUser',
                                    queryParameters: {
                                      'mobileNoLogin': serializeParam(
                                        '',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                            )
                          ],
                          style: FlutterFlowTheme.of(context).bodyMedium,
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
    );
  }
}
