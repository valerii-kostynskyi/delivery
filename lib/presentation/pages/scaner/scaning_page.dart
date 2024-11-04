import 'package:feed_delivery/presentation/custom_widget/custom_button.dart';
import 'package:feed_delivery/presentation/custom_widget/error_icon.dart';
import 'package:feed_delivery/presentation/custom_widget/license_palet.dart';
import 'package:feed_delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:go_router/go_router.dart';

class ScaningPage extends StatefulWidget {
  const ScaningPage({super.key});

  @override
  State<ScaningPage> createState() => ScaningPageState();
}

class ScaningPageState extends State<ScaningPage> {
  String? _scannedValue;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
            '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
        .listen((barcode) => _scannedValue = barcode);
  }

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      _scannedValue = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 36),
              Text(
                context.localizations.kkzDelivery,
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 36),
              BigIconWidget(
                iconName: 'truck',
                backgroundColor: theme.colorScheme.onSurface,
                iconColor: theme.focusColor,
              ),
              const SizedBox(height: 16),
              const LicensePlate(adminNumber: 'AA 1234 AA'),
              const SizedBox(height: 36),
              Divider(thickness: 1, color: Theme.of(context).hintColor),
              const SizedBox(height: 36),
              Text(
                _scannedValue ?? context.localizations.pressButtonToScanTtn,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              CustomButton(
                label: context.localizations.scanTtnButton,
                onPressed: () => scanBarcodeNormal(),
                height: 120,
                iconName: 'scan',
              ),
              const SizedBox(height: 32),
              CustomButton(
                label: context.localizations.enter,
                onPressed: () => context.go('/list-bunker-page'),
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
