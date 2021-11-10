// Flutter imports:
// Package imports:
import 'package:ai_barcode/ai_barcode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

// Project imports:
import '../../../common/widgets/loading_mixin.dart';

/// 扫描条码页面
class ScanLayout extends StatefulWidget {
  static Future<String> doScan() async {
    final result = await Get.to<String>(()=>const ScanLayout());
    return result ?? '';
  }

  const ScanLayout({Key? key}) : super(key: key);

  @override
  _ScanLayoutState createState() => _ScanLayoutState();
}

class _ScanLayoutState extends State<ScanLayout> with LoadingMixin {
  late ScannerController _scannerController;

  void scanResult(String code) {
    Get.back(result: code);
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      // 请求权限
      final status = await Permission.camera.status;
      if (status.isDenied) {
        final result = await [Permission.camera].request();
        if (result[Permission.camera] == PermissionStatus.granted) {
          init();
        }else{
          Get.back();
        }
      } else {
        init();
      }
      setLoading(false);
    });
  }

  void init() {
    _scannerController = ScannerController(
        scannerResult: scanResult,
        scannerViewCreated: () {
          _scannerController.startCamera();
          _scannerController.startCameraPreview();
        });
  }

  @override
  Widget build(BuildContext context) {
    if (loadingState) {
      return const SizedBox(
          height: 200, child: Center(child: CircularProgressIndicator()));
    }
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: PlatformAiBarcodeScannerWidget(
        platformScannerController: _scannerController,
      ),
    );
  }

  @override
  void dispose() {
    _scannerController.stopCameraPreview();
    _scannerController.stopCamera();
    super.dispose();
  }
}
