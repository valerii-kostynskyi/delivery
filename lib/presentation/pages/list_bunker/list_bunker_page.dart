import 'package:dostavka/presentation/pages/list_bunker/widget/list_bunker_item.dart';
import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListBunkerPage extends StatefulWidget {
  const ListBunkerPage({super.key});

  @override
  State<ListBunkerPage> createState() => _ListBunkerPageState();
}

class _ListBunkerPageState extends State<ListBunkerPage> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        )
                      : null,
                  background: Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          context.localizations.sectorNumber('1'),
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          context.localizations.ttnNumber('12345678'),
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(fontSize: 20),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          context.localizations.selectBunker,
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
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
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final cardItemModel = ListBunkerItemModel(
                    index: index + 1,
                    isEmpty: index % 3 != 0,
                  );

                  return ListBunkerItem(
                    cardItemModel: cardItemModel,
                    onTap: () => context
                        .push('/detail-bunker-page/${cardItemModel.index}'),
                  );
                },
                childCount: 17,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                childAspectRatio: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListBunkerItemModel {
  final int index;
  final bool isEmpty;

  ListBunkerItemModel({
    required this.index,
    required this.isEmpty,
  });
}
