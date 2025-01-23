import 'package:delivery/data/models/farm_info_task_model.dart';
import 'package:delivery/data/models/general_inner_info/general_info_inner_model.dart';
import 'package:delivery/data/models/stat/stat_model.dart';
import 'package:delivery/presentation/blocks/farm_info/farm_info_bloc.dart';
import 'package:delivery/presentation/custom_widget/custom_button.dart';
import 'package:delivery/presentation/custom_widget/error_icon.dart';
import 'package:delivery/presentation/custom_widget/license_palet.dart';
import 'package:delivery/presentation/custom_widget/loading_screen.dart';
import 'package:delivery/presentation/custom_widget/progress_widget.dart';
import 'package:delivery/presentation/pages/general_info/widget/farm_info_task_item.dart';
import 'package:delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class GeneralInfoView extends StatelessWidget {
  const GeneralInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<FarmInfoBloc, FarmInfoState>(
        listener: (context, state) {
          if (state is LogoutSuccess) {
            context.go('/login');
          }
        },
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Initializing...')),
            loading: () => const LoadingScreen(),
            success: (generalInfo, carNumber) => Column(
              children: [
                _buildAppBar(context, theme, carNumber, generalInfo.farm),
                _buildSuccessBody(context, generalInfo, carNumber, theme),
              ],
            ),
            error: (errorMessage, carNumber) =>
                _buildErrorState(context, errorMessage),
            logoutSuccess: () => const LoadingScreen(),
          );
        },
      ),
    );
  }

  Widget _buildAppBar(
      BuildContext context, ThemeData theme, String carNumber, String farm) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(160),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 48),
          Text(
            farm,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 8),
          LicensePlate(carNumber: carNumber),
          const SizedBox(height: 8),
          Text(
            context.localizations.selectTask,
            style: theme.textTheme.labelMedium?.copyWith(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuccessBody(
    BuildContext context,
    GeneralInfoInnerModel generalInfo,
    String carNumber,
    ThemeData theme,
  ) {
    final progressItems = convertStatListToProgressItems(generalInfo.statList);

    return Expanded(
      child: Column(
        children: [
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomButton(
              label: context.localizations.logout,
              onPressed: () => context.read<FarmInfoBloc>().add(const Logout()),
              height: 30,
            ),
          ),
          Expanded(
            child: generalInfo.taskList.isNotEmpty
                ? SingleChildScrollView(
                    child: Column(
                    children: generalInfo.taskList.map((task) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: FarmInfoTaskItem(
                          taskItemModel: FarmInfoTaskModel(
                            index: task.truckNumber,
                            completedUnits: task.isDone,
                            totalUnits: task.total,
                          ),
                          isTaskItem: true,
                          onTap: () async {
                            final result = await context.push<bool>(
                              '/task-list-page',
                              extra: task.truckNumber,
                            );
                            if (result is bool && result) {
                              context
                                  .read<FarmInfoBloc>()
                                  .add(const FarmInfoEvent.loadFarmInfo());
                            } else {
                              print('Task not completed or action canceled');
                            }
                          },
                        ),
                      );
                    }).toList(),
                  ))
                : Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 50),
                        Column(
                          children: [
                            BigIconWidget(
                              iconName: 'cup',
                              backgroundColor: theme.disabledColor,
                            ),
                            const SizedBox(height: 24),
                            Text(
                              context.localizations.noTasksAvailable,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ],
                        ),
                        const Spacer(),
                        CustomButton(
                          iconName: 'refresh',
                          backgroundColor: theme.colorScheme.secondary,
                          label: context.localizations.tryAgain,
                          onPressed: () {
                            context
                                .read<FarmInfoBloc>()
                                .add(const FarmInfoEvent.loadFarmInfo());
                          },
                        ),
                      ],
                    ),
                  ),
          ),
          if (generalInfo.amounts.isDoneAmount != 0)
            Align(
              alignment: Alignment.bottomCenter,
              child: FarmProgressComponent(
                totalAmount: generalInfo.amounts.totalAmount,
                isDoneAmount: generalInfo.amounts.isDoneAmount,
                items: progressItems,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String errorMessage) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const BigIconWidget(
              iconName: 'alert-octagon',
            ),
            const SizedBox(height: 32),
            Text(
              errorMessage,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            CustomButton(
              label: context.localizations.tryAgain,
              onPressed: () => context
                  .read<FarmInfoBloc>()
                  .add(const FarmInfoEvent.loadFarmInfo()),
            ),
          ],
        ),
      ),
    );
  }

  List<ProgressListItem> convertStatListToProgressItems(
      List<StatModel> statList) {
    const List<Color> staticColors = [
      Color(0xFF3697FF),
      Color(0xFFF57851),
      Color(0xFF34C759),
      Color(0xFFFFCC00),
    ];
    return statList.asMap().entries.map((entry) {
      final index = entry.key;
      final stat = entry.value;
      final color = staticColors[index % staticColors.length];
      return ProgressListItem(
        name: stat.sign,
        currentUnits: stat.isDoneAmount,
        baseColor: color,
      );
    }).toList();
  }
}
