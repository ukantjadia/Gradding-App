import 'dart:async';

import 'package:intl_phone_field/intl_phone_field.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'password_reset_login_mobile_model.dart';
export 'password_reset_login_mobile_model.dart';

class PasswordResetLoginMobileWidget extends StatefulWidget {
  const PasswordResetLoginMobileWidget({
    Key? key,
    required this.loginToResetPlaceHolder,
    required this.loginToResetRichText,
  }) : super(key: key);

  final String? loginToResetPlaceHolder;
  final String? loginToResetRichText;

  @override
  _PasswordResetLoginMobileWidgetState createState() =>
      _PasswordResetLoginMobileWidgetState();
}

class _PasswordResetLoginMobileWidgetState
    extends State<PasswordResetLoginMobileWidget> {
  late PasswordResetLoginMobileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late dynamic phone_number = "00";
  late dynamic countryName = "00";
  late dynamic countryCode = "91";

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PasswordResetLoginMobileModel());

    _model.textController1 ??= TextEditingController(text: "91") ;
    _model.textController2 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          iconTheme:
              IconThemeData(color: FlutterFlowTheme.of(context).backArrpw),
          automaticallyImplyLeading: true,
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.network(
                          'https://ukantjadia.me/gradding/passwordResetLogo.svg',
                          width: 283.0,
                          height: 265.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Reset Password?',
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Heebo',
                                  color: Color(0xFF24292D),
                                  fontSize: 22.0,
                                ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Please enter your ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Heebo',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                              ),
                              TextSpan(
                                text: valueOrDefault<String>(
                                  widget.loginToResetRichText,
                                  'Email ID',
                                ),
                                style: FlutterFlowTheme.of(context).bodyLarge,
                              ),
                              TextSpan(
                                text: ' to receive a \nverification code',
                                style: FlutterFlowTheme.of(context).bodyLarge,
                              )
                            ],
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Padding(
                          //   padding: EdgeInsetsDirectional.fromSTEB(
                          //       8.0, 40.0, 8.0, 0.0),
                          //   child: Container(
                          //     width: MediaQuery.of(context).size.width * 0.15,
                          //     child: TextFormField(
                          //       controller: _model.textController1,
                          //       obscureText: false,
                          //       decoration: InputDecoration(
                          //         labelStyle: FlutterFlowTheme.of(context)
                          //             .labelMedium
                          //             .override(
                          //               fontFamily: 'Heebo',
                          //               fontSize: 16.0,
                          //             ),
                          //         hintText: 'fl',
                          //         hintStyle: FlutterFlowTheme.of(context)
                          //             .labelMedium
                          //             .override(
                          //               fontFamily: 'Heebo',
                          //               color: Color(0xFFB0B2B5),
                          //               fontSize: 16.0,
                          //             ),
                          //         enabledBorder: UnderlineInputBorder(
                          //           borderSide: BorderSide(
                          //             color: Color(0x3F747579),
                          //             width: 1.0,
                          //           ),
                          //           borderRadius: BorderRadius.circular(8.0),
                          //         ),
                          //         focusedBorder: UnderlineInputBorder(
                          //           borderSide: BorderSide(
                          //             color:
                          //                 FlutterFlowTheme.of(context).primary,
                          //             width: 1.0,
                          //           ),
                          //           borderRadius: BorderRadius.circular(8.0),
                          //         ),
                          //         errorBorder: UnderlineInputBorder(
                          //           borderSide: BorderSide(
                          //             color: FlutterFlowTheme.of(context).error,
                          //             width: 1.0,
                          //           ),
                          //           borderRadius: BorderRadius.circular(8.0),
                          //         ),
                          //         focusedErrorBorder: UnderlineInputBorder(
                          //           borderSide: BorderSide(
                          //             color: FlutterFlowTheme.of(context).error,
                          //             width: 1.0,
                          //           ),
                          //           borderRadius: BorderRadius.circular(8.0),
                          //         ),
                          //       ),
                          //       style: FlutterFlowTheme.of(context)
                          //           .bodyMedium
                          //           .override(
                          //             fontFamily: 'Heebo',
                          //             fontSize: 16.0,
                          //           ),
                          //       keyboardType: TextInputType.number,
                          //       validator: _model.textController1Validator
                          //           .asValidator(context),
                          //       inputFormatters: [
                          //         FilteringTextInputFormatter.allow(
                          //             RegExp('[0-9]'))
                          //       ],
                          //     ),

                          //   ),
                          // ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 40.0, 8.0, 0.0),
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
                        ],
                      ),
                      Divider(
                        height: 90.0,
                        thickness: 1.0,
                        color: Colors.white,
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          if (_model.textController1.text != '') {
                            if (_model.textController2.text != '') {
                              context.pushNamed(
                                'codeVerificationLoginTimer',
                                queryParameters: {
                                  'loginToOTP': serializeParam(
                                    _model.textController2.text,
                                    ParamType.String,
                                  ),
                                  'richTextPlace': serializeParam(
                                    'mobile no',
                                    ParamType.String,
                                  ),
                                  'backIsClear': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );

                              setState(() {
                                FFAppState().mobileNoLogin =
                                    _model.textController2.text;
                              });
                            } else {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    content: Text('Mobile no cannot be empty'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
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
                                      'Country Code cannot be empty $countryCode'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        text: 'SEND OTP',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF066AC9),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Heebo',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          // print();
                          borderRadius: BorderRadius.circular(9.0),
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
