import 'package:delivery/data/models/list_silo_item/list_silo_item_model.dart';
import 'package:delivery/presentation/blocks/list_silo/list_silo_bloc.dart';
import 'package:delivery/presentation/custom_widget/back_button_widget.dart';
import 'package:delivery/presentation/custom_widget/custom_error_widget.dart';
import 'package:delivery/presentation/pages/list_silo/widget/list_silo_item.dart';
import 'package:delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

class ListSiloView extends StatefulWidget {
  final int waybillId;
  final String barcode;
  const ListSiloView({
    super.key,
    required this.waybillId,
    required this.barcode,
  });

  @override
  State<ListSiloView> createState() => _ListSiloViewState();
}

class _ListSiloViewState extends State<ListSiloView> {
  final ScrollController _scrollController = ScrollController();
  bool _isAppBarCollapsed = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.hasClients) {
        if (_scrollController.offset > 100 && !_isAppBarCollapsed) {
          setState(() {
            _isAppBarCollapsed = true;
          });
        } else if (_scrollController.offset <= 100 && _isAppBarCollapsed) {
          setState(() {
            _isAppBarCollapsed = false;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          BlocBuilder<ListSiloBloc, ListSiloState>(
            builder: (context, state) {
              return SliverAppBar(
                backgroundColor: theme.scaffoldBackgroundColor,
                pinned: true,
                centerTitle: false,
                expandedHeight: 140.0,
                flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    final double top = constraints.biggest.height;
                    final bool isCollapsed = top <= kToolbarHeight + 50;

                    return FlexibleSpaceBar(
                      centerTitle: true,
                      titlePadding: const EdgeInsets.symmetric(
                        horizontal: 0,
                        vertical: 16,
                      ),
                      title: isCollapsed
                          ? state.maybeWhen(
                              success: (silos) {
                                final firstSilo =
                                    silos.isNotEmpty ? silos.first : null;
                                return Text(
                                  firstSilo != null ? firstSilo.farm : '',
                                  style:
                                      theme.textTheme.headlineSmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              },
                              orElse: () => SizedBox.fromSize())
                          : null,
                      background: Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: BackButtonWidget(
                                  onTap: () => context.go('/scaning-page'),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                state.maybeWhen(
                                    success: (silos) {
                                      final firstSilo =
                                          silos.isNotEmpty ? silos.first : null;
                                      return Text(
                                        firstSilo != null ? firstSilo.farm : '',
                                        style: theme.textTheme.bodyLarge,
                                      );
                                    },
                                    orElse: () => const SizedBox.shrink()),
                                const SizedBox(height: 8),
                                Text(
                                  context.localizations
                                      .ttnNumber(widget.barcode),
                                  style: theme.textTheme.labelMedium
                                      ?.copyWith(fontSize: 20),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  context.localizations.selectSilo,
                                  style: theme.textTheme.labelMedium?.copyWith(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
          BlocBuilder<ListSiloBloc, ListSiloState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SliverFillRemaining(
                  child: Center(
                    child: Text('Initial state'),
                  ),
                ),
                loading: () => const SliverFillRemaining(
                  child: Center(
                    child: CupertinoActivityIndicator(radius: 15),
                  ),
                ),
                success: (silos) => SliverPadding(
                  padding: const EdgeInsets.all(16.0),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final ListSiloItemModel cardItemModel = silos[index];

                        return ListSiloItem(
                          index: index + 1,
                          cardItemModel: cardItemModel,
                          onTap: () {
                            final updatedCardItemModel = cardItemModel.copyWith(
                              ttnNumber: widget.barcode,
                            );
                            context.push(
                              '/detail-silo-page',
                              extra: updatedCardItemModel,
                            );
                          },
                        );
                      },
                      childCount: silos.length,
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                      childAspectRatio: 1,
                    ),
                  ),
                ),
                error: (errorMessage) => SliverFillRemaining(
                  child: CustomErrorWidget(
                    isTimeOutError: false,
                    message: errorMessage,
                    onRetry: () => context.read<ListSiloBloc>()
                      ..add(
                          ListSiloEvent.loadSilos(waybillId: widget.waybillId)),
                  ),
                ),
                empty: () => SliverFillRemaining(
                  child: Center(
                    child: Text(
                      'context.localizations.noSilos',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
