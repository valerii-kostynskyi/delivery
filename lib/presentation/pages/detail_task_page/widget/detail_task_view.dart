import 'package:delivery/data/models/detail_task_model/detail_task_model.dart';
import 'package:delivery/data/models/detail_task_silo_model.dart/detail_task_silo_model.dart';
import 'package:delivery/presentation/blocks/detail_task/detail_task_bloc.dart';
import 'package:delivery/presentation/custom_widget/back_button_widget.dart';
import 'package:delivery/presentation/custom_widget/custom_button.dart';
import 'package:delivery/presentation/custom_widget/error_icon.dart';
import 'package:delivery/presentation/custom_widget/loading_screen.dart';
import 'package:delivery/presentation/pages/detail_task_page/widget/chose_silo_widget.dart';
import 'package:delivery/presentation/utility/extension/change_localization.dart';
import 'package:delivery/presentation/utility/extension/formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class DetailTaskView extends StatelessWidget {
  const DetailTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        title: Text(
          context.localizations.back,
          style: theme.textTheme.titleMedium,
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: BackButtonWidget(
            onTap: () => context.pop(true),
          ),
        ),
      ),
      body: BlocListener<DetailTaskBloc, DetailTaskState>(
        listener: (context, state) {
          if (state == const DetailTaskState.completed()) {
            context.pop(true);
          }
        },
        child: BlocBuilder<DetailTaskBloc, DetailTaskState>(
          builder: (context, state) {
            return state.when(
              initial: () => const LoadingScreen(),
              loading: () => const LoadingScreen(),
              completed: () => const LoadingScreen(),
              success: (detailTask) =>
                  _buildSuccessBody(context, detailTask, theme),
              error: (errorMessage) =>
                  _buildErrorState(context, errorMessage, theme),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSuccessBody(
      BuildContext context, DetailTaskModel detailTask, ThemeData theme) {
    DetailTaskSiloModel? selectedSilo =
        detailTask.silos.isNotEmpty ? detailTask.silos.first : null;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: theme.canvasColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ChooseSiloWidget(
          detailTask: detailTask,
          onSiloSelected: (silo) {
            selectedSilo = silo;
          },
          onNextPressed: () {
            if (selectedSilo != null) {
              _showConfirmationSheet(context, detailTask, selectedSilo!);
            }
          },
          onBackPressed: () => context.pop(),
        ),
      ),
    );
  }

  void _showConfirmationSheet(
    BuildContext parentContext,
    DetailTaskModel detailTask,
    DetailTaskSiloModel silo,
  ) {
    showModalBottomSheet(
      backgroundColor: Theme.of(parentContext).dialogBackgroundColor,
      context: parentContext,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        final theme = Theme.of(context);
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BigIconWidget(
                    iconName: 'check',
                    backgroundColor: theme.indicatorColor,
                    iconColor: theme.focusColor,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    context.localizations.shipmentNumber(detailTask.taskId),
                    style: theme.textTheme.labelLarge,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: theme.indicatorColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: SvgPicture.asset(
                                      'assets/icons/silo.svg',
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    silo.name,
                                    style:
                                        theme.textTheme.labelMedium?.copyWith(
                                      color: theme.primaryColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: SvgPicture.asset(
                                      'assets/icons/house.svg',
                                      colorFilter: ColorFilter.mode(
                                        theme.focusColor,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    detailTask.houseName,
                                    style:
                                        theme.textTheme.labelMedium?.copyWith(
                                      color: theme.primaryColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 16,
                              height: 16,
                              child: SvgPicture.asset(
                                'assets/icons/arrow-down.svg',
                                colorFilter: ColorFilter.mode(
                                  theme.focusColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Column(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                    detailTask.feed,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        theme.textTheme.labelMedium?.copyWith(
                                      color: theme.focusColor,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                Text(
                                  formatWeight(detailTask.amount),
                                  style: theme.textTheme.labelLarge?.copyWith(
                                    color: theme.focusColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomButton(
                    label: 'Підтвердити',
                    onPressed: () {
                      parentContext.read<DetailTaskBloc>().add(
                            DetailTaskEvent.confirmCompletion(
                              taskId: detailTask.taskId,
                              selectedSilo: silo,
                            ),
                          );
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Скасувати',
                      style:
                          theme.textTheme.titleMedium?.copyWith(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildErrorState(
      BuildContext context, String errorMessage, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  context.localizations.somethingWentWrong,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  errorMessage,
                  style: theme.textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          CustomButton(
            label: context.localizations.back,
            onPressed: () => context.pop(),
          ),
        ],
      ),
    );
  }
}
