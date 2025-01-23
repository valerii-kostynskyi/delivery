import 'package:delivery/presentation/blocks/scan/scan_bloc.dart';
import 'package:delivery/presentation/pages/scaner/widget/scan_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ScanBloc(),
      child: const ScanView(),
    );
  }
}
