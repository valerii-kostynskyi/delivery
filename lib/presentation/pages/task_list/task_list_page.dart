import 'package:dostavka/presentation/custom_widget/back_button_widget.dart';
import 'package:dostavka/presentation/pages/task_list/widget/task_list_item.dart';
import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TaskListPage extends StatefulWidget {
  final int index;
  const TaskListPage({
    super.key,
    required this.index,
  });

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
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
            leadingWidth: 48,
            leading: BackButtonWidget(
              onTap: () => context.pop(),
            ),
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
                          context.localizations.selectTask,
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
                          context.localizations.sectorNumber(widget.index),
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'AA 1234 AA',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(fontSize: 20),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          context.localizations.selectTask,
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
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final completedUnits = index % 2 == 0 ? 12 : 5;
                  final taskItemModel = TaskItemModel(
                    index: index + 1,
                    completedUnits: completedUnits,
                    totalUnits: 12,
                  );

                  return TaskListItem(
                    taskItemModel: taskItemModel,
                    isTaskItem: true,
                    onTap: () => context.push('/progress-page'),
                  );
                },
                childCount: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TaskItemModel {
  final int index;
  final int completedUnits;
  final int totalUnits;

  TaskItemModel({
    required this.index,
    required this.completedUnits,
    required this.totalUnits,
  });
}
