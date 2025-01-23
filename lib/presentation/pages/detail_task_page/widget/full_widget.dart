import 'package:delivery/data/models/task_model/task_model.dart';
import 'package:delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class FullWidget extends StatelessWidget {
  final TaskModel task;
  const FullWidget({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 24),
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    Text(
                      context.localizations.shipmentNumber(task.taskId),
                      style: theme.textTheme.labelLarge,
                    ),
                    const SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onSurface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                        'Бункер ',
                                        style: theme.textTheme.labelMedium
                                            ?.copyWith(
                                          color: theme.primaryColor,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        '3',
                                        style: theme.textTheme.labelMedium
                                            ?.copyWith(
                                          color: theme.primaryColor,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                        'Пташник ',
                                        style: theme.textTheme.labelMedium
                                            ?.copyWith(
                                          color: theme.primaryColor,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        '3',
                                        style: theme.textTheme.labelMedium
                                            ?.copyWith(
                                          color: theme.primaryColor,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
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
                                      Text(
                                        'старт',
                                        style: theme.textTheme.labelMedium
                                            ?.copyWith(
                                          color: theme.focusColor,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        '3.4т',
                                        style: theme.textTheme.labelLarge
                                            ?.copyWith(
                                          color: theme.focusColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Divider(color: theme.focusColor),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Поповнено:'),
                              Text('9:15 15.07.204'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            context.localizations.back,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
