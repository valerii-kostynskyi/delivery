import 'package:delivery/data/models/detail_task_model/detail_task_model.dart';
import 'package:delivery/data/models/detail_task_silo_model.dart/detail_task_silo_model.dart';
import 'package:delivery/presentation/custom_widget/custom_button.dart';
import 'package:delivery/presentation/pages/detail_task_page/widget/silo_option.dart';
import 'package:delivery/presentation/utility/extension/formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseSiloWidget extends StatefulWidget {
  final DetailTaskModel detailTask;
  final ValueChanged<DetailTaskSiloModel>? onSiloSelected;
  final VoidCallback? onNextPressed;
  final VoidCallback onBackPressed;

  const ChooseSiloWidget({
    super.key,
    required this.detailTask,
    this.onSiloSelected,
    this.onNextPressed,
    required this.onBackPressed,
  });

  @override
  State<ChooseSiloWidget> createState() => _ChooseSiloWidgetState();
}

class _ChooseSiloWidgetState extends State<ChooseSiloWidget> {
  int? selectedSiloId;

  @override
  void initState() {
    super.initState();
    if (widget.detailTask.silos.isNotEmpty) {
      selectedSiloId = widget.detailTask.silos.first.id;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 16),
              Text(
                'Завдання №${widget.detailTask.taskId}',
                style: theme.textTheme.labelLarge,
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: theme.secondaryHeaderColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.detailTask.houseName,
                        style: theme.textTheme.bodyMedium),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Потрібно:',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                          height: 16,
                          child: SvgPicture.asset(
                            'assets/icons/upload.svg',
                            colorFilter: ColorFilter.mode(
                              theme.colorScheme.onPrimary,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          formatWeight(widget.detailTask.amount),
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: theme.colorScheme.onPrimary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    if (widget.detailTask.silos.isNotEmpty)
                      Text(
                        'Корм: ${widget.detailTask.silos.first.feed}',
                        style: theme.textTheme.bodyMedium,
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              if (widget.detailTask.silos.isNotEmpty) ...[
                Text(
                  'ОБЕРІТЬ БУНКЕР',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: theme.dividerColor,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.detailTask.silos.length,
                    itemBuilder: (context, index) {
                      final silo = widget.detailTask.silos[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: SiloOption(
                          selectedSiloId: selectedSiloId!,
                          onSelect: (id) {
                            setState(() {
                              selectedSiloId = id;
                            });
                            if (widget.onSiloSelected != null) {
                              widget.onSiloSelected!(
                                widget.detailTask.silos
                                    .firstWhere((s) => s.id == id),
                              );
                            }
                          },
                          detailSiloTask: silo,
                        ),
                      );
                    },
                  ),
                ),
              ] else ...[
                Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.inbox_outlined,
                        size: 48,
                        color: theme.hintColor,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Немає доступних бункерів',
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: theme.dividerColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
        if (widget.detailTask.silos.isNotEmpty && widget.onNextPressed != null)
          CustomButton(
            onPressed: widget.onNextPressed,
            backgroundColor: theme.colorScheme.secondary,
            label: 'Далі',
          ),
        TextButton(
          onPressed: widget.onBackPressed,
          child: Text(
            'Назад',
            style: theme.textTheme.titleMedium?.copyWith(fontSize: 16),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
