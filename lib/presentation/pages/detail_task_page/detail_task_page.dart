import 'package:feed_delivery/presentation/custom_widget/back_button_widget.dart';
import 'package:feed_delivery/presentation/custom_widget/custom_button.dart';
import 'package:feed_delivery/presentation/custom_widget/error_icon.dart';
import 'package:feed_delivery/presentation/pages/task_list/task_list_page.dart';

import 'package:feed_delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class DetailTaskPage extends StatefulWidget {
  final TaskListItemModel item;

  const DetailTaskPage({
    super.key,
    required this.item,
  });

  @override
  DetailTaskPageState createState() => DetailTaskPageState();
}

class DetailTaskPageState extends State<DetailTaskPage> {
  String selectedSilo = 'silo_3';
  bool isAcceptWidget = false;

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
        leadingWidth: 48,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: BackButtonWidget(
            onTap: () => context.pop(),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: theme.canvasColor,
            borderRadius: BorderRadius.circular(16.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: widget.item.status == Status.full
              ? _fullWidget(theme, context)
              : isAcceptWidget
                  ? _acceptWidget(theme, context)
                  : _choseSilo(theme, context),
        ),
      ),
    );
  }

  Widget _fullWidget(
    ThemeData theme,
    BuildContext context,
  ) {
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
                      context.localizations.shipmentNumber(widget.item.index),
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

  Widget _choseSilo(
    ThemeData theme,
    BuildContext context,
  ) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 24),
              Text(
                context.localizations.shipmentNumber(widget.item.index),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Пташник:',
                          style: theme.textTheme.bodyMedium,
                        ),
                        Text(
                          '3',
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
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
                          '3.4т',
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: theme.colorScheme.onPrimary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Корм',
                          style: theme.textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Старт',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'ОБЕРІТЬ БУНКЕР',
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.dividerColor,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              _buildSiloOption(
                theme: theme,
                siloName: 'Бункер 3',
                weight: '4.0т',
                value: 'silo_3',
                isSelected: selectedSilo == 'silo_3',
              ),
              const SizedBox(height: 8),
              _buildSiloOption(
                theme: theme,
                siloName: 'Бункер 5',
                weight: '3.5т',
                value: 'silo_5',
                isSelected: selectedSilo == 'silo_5',
              ),
            ],
          ),
        ),
        CustomButton(
          onPressed: () {
            setState(() {
              isAcceptWidget = true;
            });
          },
          label: context.localizations.next,
        ),
        TextButton(
          onPressed: () => context.pop(),
          child: Text(
            context.localizations.back,
            style: theme.textTheme.titleMedium!.copyWith(fontSize: 16),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _acceptWidget(
    ThemeData theme,
    BuildContext context,
  ) {
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
                    BigIconWidget(
                      iconName: 'check',
                      backgroundColor: theme.colorScheme.onSurface,
                      iconColor: theme.focusColor,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      context.localizations.shipmentNumber(widget.item.index),
                      style: theme.textTheme.labelLarge,
                    ),
                    const SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onSurface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
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
                                    style:
                                        theme.textTheme.labelMedium?.copyWith(
                                      color: theme.primaryColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    '3',
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
                                    style:
                                        theme.textTheme.labelMedium?.copyWith(
                                      color: theme.primaryColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    '3',
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
                                    style:
                                        theme.textTheme.labelMedium?.copyWith(
                                      color: theme.focusColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    '3.4т',
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
                  ],
                ),
              ),
            ],
          ),
        ),
        CustomButton(
          onPressed: () {
            context.pop();
          },
          label: context.localizations.confirmExecution,
        ),
        const SizedBox(height: 12),
        TextButton(
          onPressed: () {
            setState(() {
              isAcceptWidget = false;
            });
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

  Widget _buildSiloOption({
    required ThemeData theme,
    required String siloName,
    required String weight,
    required String value,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSilo = value;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? theme.colorScheme.onSurface : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Radio<String>(
              value: value,
              groupValue: selectedSilo,
              activeColor: theme.focusColor,
              fillColor: WidgetStateProperty.resolveWith<Color>((states) {
                if (states.contains(WidgetState.selected)) {
                  return theme.focusColor;
                }
                return theme.primaryColor;
              }),
              onChanged: (String? newValue) {
                setState(() {
                  selectedSilo = newValue!;
                });
              },
            ),
            Expanded(
              child: Text(
                siloName,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: theme.primaryColor,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: 16,
              height: 16,
              child: SvgPicture.asset(
                'assets/icons/silo.svg',
              ),
            ),
            const SizedBox(width: 4),
            Text(
              weight,
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.primaryColor,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
