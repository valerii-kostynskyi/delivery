import 'package:dostavka/presentation/custom_widget/back_button_widget.dart';
import 'package:dostavka/presentation/custom_widget/custom_button.dart';
import 'package:dostavka/presentation/custom_widget/error_icon.dart';

import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailTaskPage extends StatefulWidget {
  final int index;

  const DetailTaskPage({
    super.key,
    required this.index,
  });

  @override
  DetailTaskPageState createState() => DetailTaskPageState();
}

class DetailTaskPageState extends State<DetailTaskPage> {
  String? selectedBunker;
  bool isAcceptWidget = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        title: Hero(
          tag: 'task-${widget.index}',
          child: Text(
            context.localizations.shipmentNumber(widget.index),
            style: theme.textTheme.titleMedium,
          ),
        ),
        leadingWidth: 48,
        leading: BackButtonWidget(
          onTap: () => context.pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: isAcceptWidget
            ? _acceptWidget(theme, context)
            : _choseBunker(theme, context),
      ),
    );
  }

  Widget _choseBunker(
    ThemeData theme,
    BuildContext context,
  ) {
    return Column(
      children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Потрібно:',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
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
        _buildBunkerOption(
          theme: theme,
          bunkerName: 'Бункер 3',
          weight: '4.0т',
          value: 'bunker_3',
          isSelected: selectedBunker == 'bunker_3',
        ),
        const SizedBox(height: 8),
        _buildBunkerOption(
          theme: theme,
          bunkerName: 'Бункер 5',
          weight: '3.5т',
          value: 'bunker_5',
          isSelected: selectedBunker == 'bunker_5',
        ),
        const Spacer(),
        CustomButton(
          onPressed: selectedBunker != null
              ? () {
                  setState(() {
                    isAcceptWidget = true;
                  });
                }
              : null,
          label: context.localizations.next,
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _acceptWidget(
    ThemeData theme,
    BuildContext context,
  ) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
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
                      context.localizations.shipmentNumber(widget.index),
                      style: theme.textTheme.labelLarge,
                    ),
                    const SizedBox(height: 16),
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
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: theme.focusColor,
                              ),
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
                                    style:
                                        theme.textTheme.labelMedium?.copyWith(
                                      color: theme.focusColor,
                                      fontSize: 20,
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
          onPressed: selectedBunker != null
              ? () {
                  context.pop();
                }
              : null,
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
      ],
    );
  }

  Widget _buildBunkerOption({
    required ThemeData theme,
    required String bunkerName,
    required String weight,
    required String value,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedBunker = value;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? theme.colorScheme.onSurface : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color:
                isSelected ? theme.colorScheme.onSurface : Colors.transparent,
            width: 1,
          ),
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Radio<String>(
              value: value,
              groupValue: selectedBunker,
              activeColor: theme.focusColor,
              fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                if (states.contains(MaterialState.selected)) {
                  return theme.focusColor;
                }
                return theme.primaryColor;
              }),
              onChanged: (String? newValue) {
                setState(() {
                  selectedBunker = newValue;
                });
              },
            ),
            Expanded(
              child: Text(
                bunkerName,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: theme.primaryColor,
                  fontSize: 20,
                ),
              ),
            ),
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
