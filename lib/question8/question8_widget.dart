import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../question9/question9_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question8Widget extends StatefulWidget {
  const Question8Widget({
    Key key,
    this.gameRef,
  }) : super(key: key);

  final DocumentReference gameRef;

  @override
  _Question8WidgetState createState() => _Question8WidgetState();
}

class _Question8WidgetState extends State<Question8Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0, -1.76),
            child: Image.network(
              'https://storage.cloud.google.com/ernecardspics/108.jpg',
              width: 400,
              height: 760,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 1),
            child: FFButtonWidget(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Question9Widget(),
                  ),
                );
              },
              text: 'Next',
              options: FFButtonOptions(
                width: 400,
                height: 80,
                color: FlutterFlowTheme.of(context).primaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 40,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
