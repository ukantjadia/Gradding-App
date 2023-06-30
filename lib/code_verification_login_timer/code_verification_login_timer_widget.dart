import 'dart:async';

import 'package:velocity_x/velocity_x.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'code_verification_login_timer_model.dart';
export 'code_verification_login_timer_model.dart';

class CodeVerificationLoginTimerWidget extends StatefulWidget {
  const CodeVerificationLoginTimerWidget({
    Key? key,
    required this.loginToOTP,
    required this.richTextPlace,
    required this.backIsClear,
  }) : super(key: key);

  final String? loginToOTP;
  final String? richTextPlace;
  final String? backIsClear;

  @override
  _CodeVerificationLoginTimerWidgetState createState() =>
      _CodeVerificationLoginTimerWidgetState();
}

class _CodeVerificationLoginTimerWidgetState
    extends State<CodeVerificationLoginTimerWidget> {
  late CodeVerificationLoginTimerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _secondsRemaining = 30;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
    _model = createModel(context, () => CodeVerificationLoginTimerModel());
  }

  @override
  void dispose() {
    _model.dispose();
    _timer?.cancel();
    super.dispose();
  }


  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_secondsRemaining <= 0) {
          timer.cancel();
        } else {
          _secondsRemaining--;
        }
      });
    });
  }

  void resendOtp() {
    // Implement your resend OTP logic here
    print('Resending OTP...');
    // Reset the timer
    setState(() {
      _secondsRemaining = 30;
    });
    startTimer();
  }

  String formatTime(int seconds) {
    final minutes = (seconds / 60).floor();
    final remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }
  // //--------------------------------

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
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 30.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 203.0,
                          height: 210.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SvgPicture.network(
                              'https://ukantjadia.me/gradding/codeVerificationLogo.svg',
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Verification Code',
                    style: FlutterFlowTheme.of(context).titleLarge,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'We have sent the code verification to\nyour ',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Heebo',
                                    fontSize: 16.0,
                                  ),
                        ),
                        TextSpan(
                          text: widget.richTextPlace!,
                          style: FlutterFlowTheme.of(context).labelLarge,
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                    child: Text(
                      widget.loginToOTP!,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Heebo',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: PinCodeTextField(
                            autoDisposeControllers: false,
                            appContext: context,
                            length: 4,
                            textStyle: FlutterFlowTheme.of(context).bodyLarge,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            enableActiveFill: false,
                            autoFocus: true,
                            enablePinAutofill: true,
                            errorTextSpace: 16.0,
                            showCursor: false,
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            obscureText: false,
                            hintCharacter: ' ',
                            pinTheme: PinTheme(
                              fieldHeight: 39.0,
                              fieldWidth: 38.0,
                              borderWidth: 2.0,
                              borderRadius: BorderRadius.circular(3.0),
                              shape: PinCodeFieldShape.box,
                              activeColor: FlutterFlowTheme.of(context).border,
                              inactiveColor:
                                  FlutterFlowTheme.of(context).border,
                              selectedColor:
                                  FlutterFlowTheme.of(context).primary,
                              activeFillColor:
                                  FlutterFlowTheme.of(context).border,
                              inactiveFillColor:
                                  FlutterFlowTheme.of(context).border,
                              selectedFillColor:
                                  FlutterFlowTheme.of(context).primary,
                            ),
                            controller: _model.pinCodeController,
                            onChanged: (_) {},
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: _model.pinCodeControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _secondsRemaining <= 0
                            ? Row(
                                children: [
                                  Text(
                                    "Didn't get it? ",
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Heebo',
                                            fontSize: 14,
                                            color: Color(0xFF24292D)),
                                  ),
                                  Text(
                                    "Send Again ",
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                            fontFamily: 'Heebo',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF066AC9)),
                                  ).onTap(() {
                                    resendOtp();
                                  }),
                                ],
                              )
                              
                            : RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Resend OTP in ',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Heebo',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF24292D),
                                          ),
                                    ),
                                    TextSpan(
                                      text: '00:$_secondsRemaining',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Heebo',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF066AC9),
                                          ),
                                    )
                                  ],
                                ),
                              )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'newPasswordSetup',
                          queryParameters: {
                            'loginToResetPlaceHolder': serializeParam(
                              '',
                              ParamType.String,
                            ),
                            'loginToResetRichText': serializeParam(
                              '',
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      text: 'VERIFY & CONTINUE',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF066AC9),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Heebo',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(9.0),
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
