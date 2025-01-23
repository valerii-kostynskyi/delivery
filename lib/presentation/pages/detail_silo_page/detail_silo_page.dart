import 'package:delivery/data/models/list_silo_item/list_silo_item_model.dart';
import 'package:delivery/presentation/blocks/detail_silo/detail_silo_bloc.dart';
import 'package:delivery/presentation/custom_widget/back_button_widget.dart';
import 'package:delivery/presentation/custom_widget/custom_button.dart';
import 'package:delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:overlay_support/overlay_support.dart';

class DetailSiloPage extends StatelessWidget {
  final ListSiloItemModel item;

  const DetailSiloPage({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final String iconName = item.status == 'full' ? 'silo_full' : 'silo_load';
    bool isEmpty = item.status != 'full';

    return BlocProvider(
      create: (context) => DetailSiloBloc(),
      child: Scaffold(
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
          padding: const EdgeInsets.all(16),
          child: BlocConsumer<DetailSiloBloc, DetailSiloState>(
            listener: (context, state) {
              if (state is Completed) {
                showSimpleNotification(
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/silo_full.svg',
                        width: 25,
                        height: 25,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.localizations.farmNumber(item.farm),
                            style: theme.textTheme.bodySmall!
                                .copyWith(fontSize: 14),
                          ),
                          Text(
                            context.localizations.siloNumber(item.silos),
                            style: theme.textTheme.labelMedium,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: theme.focusColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          context.localizations.refilled,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(color: theme.canvasColor),
                        ),
                      ),
                    ],
                  ),
                  background: theme.colorScheme.onSurface,
                );

                Future.delayed(const Duration(seconds: 2), () {
                  context.go('/scaning-page');
                });
              }
            },
            builder: (context, state) {
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: theme.canvasColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 96,
                            height: 96,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isEmpty
                                  ? theme.colorScheme.onBackground
                                  : theme.highlightColor,
                            ),
                            child: Center(
                              child: SizedBox(
                                width: 60,
                                height: 60,
                                child: SvgPicture.asset(
                                  'assets/icons/$iconName.svg',
                                  colorFilter: isEmpty
                                      ? ColorFilter.mode(
                                          theme.colorScheme.onPrimary,
                                          BlendMode.srcIn,
                                        )
                                      : null,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(context.localizations.ttnTask),
                          const SizedBox(height: 12),
                          Text(
                            item.ttnNumber!,
                            style: theme.textTheme.labelMedium,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            context.localizations.farmNumber(item.farm),
                            style: theme.textTheme.titleMedium!
                                .copyWith(color: theme.dividerColor),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${item.silos} ',
                                style: theme.textTheme.labelLarge!.copyWith(
                                    fontSize: 45,
                                    color: isEmpty
                                        ? theme.colorScheme.onPrimary
                                        : null),
                              ),
                              Text(
                                context.localizations.silo,
                                style: theme.textTheme.labelLarge!.copyWith(
                                    fontSize: 45,
                                    color: isEmpty
                                        ? theme.colorScheme.onPrimary
                                        : null),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    if (state is Loading) const CircularProgressIndicator(),
                    isEmpty
                        ? CustomButton(
                            isLoading: state is Loading,
                            onPressed: () {
                              context.read<DetailSiloBloc>().add(
                                  DetailSiloEvent.confirmCompletion(
                                      item: item));
                            },
                            label: context.localizations.confirmCompletion,
                          )
                        : Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: theme.highlightColor,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Text(
                              context.localizations.confirmed,
                              style: theme.textTheme.bodyLarge!
                                  .copyWith(color: theme.focusColor),
                            ),
                          ),
                    const SizedBox(height: 12),
                    TextButton(
                      onPressed: () => context.pop(),
                      child: Text(
                        context.localizations.back,
                        style:
                            theme.textTheme.titleMedium!.copyWith(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
