import 'package:delivery/data/models/waybill_details/waybill_details.dart';
import 'package:delivery/presentation/blocks/scan/scan_bloc.dart';
import 'package:delivery/presentation/custom_widget/custom_button.dart';
import 'package:delivery/presentation/custom_widget/custom_error_widget.dart';
import 'package:delivery/presentation/custom_widget/error_icon.dart';
import 'package:delivery/presentation/custom_widget/license_palet.dart';
import 'package:delivery/presentation/custom_widget/loading_screen.dart';
import 'package:delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ScanView extends StatelessWidget {
  const ScanView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: BlocConsumer<ScanBloc, ScanState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (waybillId, barcode) {
                final waybillDetails = WaybillDetails(
                  waybillId: waybillId,
                  barcode: barcode,
                );
                context.replace('/list-silo-page', extra: waybillDetails);
              },
              logoutSuccess: () => context.go('/login'),
            );
          },
          builder: (context, state) {
            return state.when(
              initial: () => _buildScanUI(context, theme, ''),
              initialWithCarNumber: (carNumber) =>
                  _buildScanUI(context, theme, carNumber),
              loading: () => const LoadingScreen(),
              success: (waybillId, barcode) => _buildScanUI(context, theme, ''),
              error: (errorMessage) => CustomErrorWidget(
                isTimeOutError: false,
                message: errorMessage,
                onRetry: () => context.read<ScanBloc>().add(const RetryScan()),
              ),
              errorWithWidget: (carNumber, isTimeOutError) => Column(
                children: [
                  const SizedBox(height: 36),
                  Text(
                    context.localizations.ttnNumber(carNumber),
                    style: theme.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 60),
                  CustomErrorWidget(
                    isTimeOutError: isTimeOutError,
                    message: context.localizations.noServerResponse,
                    onRetry: () => context
                        .read<ScanBloc>()
                        .add(const InitializeCarNumber()),
                  ),
                ],
              ),
              logoutSuccess: () {
                return const SizedBox.shrink();
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildScanUI(BuildContext context, ThemeData theme, String carNumber) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 36),
          Text(
            context.localizations.kkzDelivery,
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 60),
          BigIconWidget(
            iconName: 'truck',
            backgroundColor: theme.colorScheme.onSurface,
            iconColor: theme.focusColor,
          ),
          const SizedBox(height: 16),
          LicensePlate(carNumber: carNumber),
          const SizedBox(height: 36),
          Divider(thickness: 1, color: theme.hintColor),
          const SizedBox(height: 36),
          Text(
            context.localizations.pressButtonToScanTtn,
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 36),
          CustomButton(
            label: context.localizations.scanTtnButton,
            onPressed: () => context.read<ScanBloc>().add(const StartScan()),
            height: 120,
            iconName: 'scan',
          ),
          const SizedBox(height: 32),
          CustomButton(
            label: context.localizations.logout,
            onPressed: () => context.read<ScanBloc>().add(const Logout()),
            height: 30,
          ),
        ],
      ),
    );
  }
}
