import 'package:delivery/data/models/list_silo_item_model.dart';
import 'package:delivery/presentation/blocks/list_silo/list_silo_bloc.dart';
import 'package:delivery/presentation/custom_widget/custom_error_widget.dart';
import 'package:delivery/presentation/pages/list_silo/widget/list_silo_item.dart';
import 'package:delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListSiloPage extends StatefulWidget {
  const ListSiloPage({super.key});

  @override
  State<ListSiloPage> createState() => _ListSiloPageState();
}

class _ListSiloPageState extends State<ListSiloPage> {
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
    return BlocProvider(
      create: (_) => ListSiloBloc()..add(const ListSiloEvent.loadSilos()),
      child: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
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
                    titlePadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                    title: isCollapsed
                        ? Text(
                            context.localizations.ttnNumber('12345678'),
                            style: theme.textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.bold),
                          )
                        : null,
                    background: Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            context.localizations.farmNumber('1'),
                            style: theme.textTheme.bodyLarge,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            context.localizations.ttnNumber('12345678'),
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
                    ),
                  );
                },
              ),
            ),
            BlocBuilder<ListSiloBloc, ListSiloState>(
              builder: (context, state) {
                if (state.status == ListSiloStatus.loading) {
                  return const SliverFillRemaining(
                    child: Center(
                      child: CupertinoActivityIndicator(radius: 15),
                    ),
                  );
                }

                if (state.status == ListSiloStatus.error) {
                  return SliverFillRemaining(
                    child: CustomErrorWidget(
                      message: context.localizations.noServerResponse,
                      onRetry: () => context.read<ListSiloBloc>()
                        ..add(const ListSiloEvent.loadSilos()),
                    ),
                  );
                }

                if (state.status == ListSiloStatus.empty) {
                  return SliverFillRemaining(
                    child: Center(
                      child: Text(
                        'context.localizations.noSilosAvailable',
                        style: theme.textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }

                return SliverPadding(
                  padding: const EdgeInsets.all(16.0),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final ListSiloItemModel cardItemModel =
                            state.silos[index];

                        return ListSiloItem(
                          cardItemModel: cardItemModel,
                          onTap: () {
                            context.push(
                              '/detail-silo-page/${cardItemModel.index}',
                              extra: cardItemModel,
                            );
                          },
                        );
                      },
                      childCount: state.silos.length,
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                      childAspectRatio: 1,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
