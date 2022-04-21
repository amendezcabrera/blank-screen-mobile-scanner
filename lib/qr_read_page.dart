import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

MobileScannerController cameraController = MobileScannerController();

class QrReadPage extends StatelessWidget {
  const QrReadPage({Key? key, required this.qrRead}) : super(key: key);
  final void Function(String) qrRead;

  @override
  Widget build(BuildContext context) {
    return MobileScanner(
        allowDuplicates: false,
        controller: cameraController,
        onDetect: (barcode, args) {
          String? code = barcode.rawValue;
          qrRead.call(code ?? 'Empty');
        });
  }
}
