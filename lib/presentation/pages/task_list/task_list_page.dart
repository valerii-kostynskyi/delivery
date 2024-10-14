import 'package:dostavka/presentation/custom_widget/back_button_widget.dart';
import 'package:dostavka/presentation/custom_widget/progress_widget.dart';
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
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                pinned: true,
                centerTitle: false,
                expandedHeight: 140.0,
                leading: const SizedBox(),
                flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    final double top = constraints.biggest.height;
                    final bool isCollapsed = top <= kToolbarHeight + 90;

                    return FlexibleSpaceBar(
                      centerTitle: true,
                      titlePadding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 16),
                      title: isCollapsed
                          ? SizedBox(
                              height: 30,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  BackButtonWidget(
                                    onTap: () => context.pop(),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    context.localizations.selectTask,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox(height: 0),
                      background: Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  context.localizations
                                      .sectorNumber(widget.index),
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        color: Colors.grey,
                                        fontSize: 20,
                                      ),
                                ),
                              ],
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: BackButtonWidget(
                                onTap: () => context.pop(),
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
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 75),
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
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 6.0,
                    spreadRadius: 4.0,
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                    ),
                    builder: (context) {
                      return Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SectorProgressComponent(
                              totalCapacity: 300,
                              items: [
                                ProgressListItem(
                                  name: 'AA 1234 AA',
                                  currentUnits: 42,
                                  baseColor: const Color(0xFF3697FF),
                                ),
                                ProgressListItem(
                                  name: 'BB 1234 BB',
                                  currentUnits: 150,
                                  baseColor: const Color(0xFFF57851),
                                ),
                                ProgressListItem(
                                  name: 'BB 1234 BB',
                                  currentUnits: 24,
                                  baseColor:
                                      const Color.fromARGB(255, 7, 168, 7),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  context.localizations.totalActual,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
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
