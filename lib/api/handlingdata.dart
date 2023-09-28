import 'package:deaf_dumb_system/api/statusrequest.dart';
import 'package:deaf_dumb_system/core/apprequired/text.dart';
import 'package:flutter/material.dart';

class HandlingData extends StatelessWidget {
  final StatusRequst statusRequst;
  final Widget widget;
  const HandlingData(
      {super.key, required this.statusRequst, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequst == StatusRequst.Loading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        
            : statusRequst == StatusRequst.Loading
                ? const Center(
                    child: text(title: 'nodata'),
                  )
                : statusRequst == StatusRequst.filedserver
                    ? const Center(
                        child: text(title: 'server'),
                      )
                    : widget;
  }
}
