import 'package:feed_delivery/presentation/custom_widget/back_button_widget.dart';
import 'package:feed_delivery/presentation/pages/task_list/widget/task_list_item.dart';
import 'package:feed_delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class TaskListPage extends StatefulWidget {
  final int taskNumber;
  const TaskListPage({
    super.key,
    required this.taskNumber,
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
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: theme.scaffoldBackgroundColor,
            pinned: true,
            centerTitle: false,
            expandedHeight: 120.0,
            leading: const SizedBox(),
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final double top = constraints.biggest.height;
                final bool isCollapsed = top <= kToolbarHeight + 80;

                return FlexibleSpaceBar(
                  centerTitle: true,
                  titlePadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                                context.localizations.selectShipment,
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
                    padding: const EdgeInsets.only(
                      top: 60.0,
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 48,
                          height: 48,
                          child: BackButtonWidget(
                            onTap: () => context.pop(),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              context.localizations
                                  .taskNumber(widget.taskNumber),
                              style: theme.textTheme.labelSmall!
                                  .copyWith(fontSize: 20),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              context.localizations.selectShipment,
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: theme.dividerColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 48,
                          height: 48,
                          child: refreshButton(),
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
              top: 16,
              right: 16,
              left: 16,
              bottom: 75,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final taskItemModel = TaskListItemModel(
                  index: index + 1,
                  title: context.localizations.poultryHouseNumber(index + 1),
                  tons: 5,
                  status: index % 2 == 0
                      ? Status.full
                      : index % 3 == 0
                          ? Status.empty
                          : Status.inProcess,
                );

                return TaskListItem(
                  itemModel: taskItemModel,
                  onTap: () => context.push(
                    '/detail-task-page/${taskItemModel.index}',
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget refreshButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Theme.of(context).hintColor,
            width: 1.0,
          ),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            'assets/icons/refresh.svg',
            colorFilter: ColorFilter.mode(
              Theme.of(context).iconTheme.color!,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}

class TaskListItemModel {
  final int index;
  final String title;
  final double tons;
  final Status status;

  TaskListItemModel({
    required this.index,
    required this.title,
    required this.tons,
    required this.status,
  });
}

enum Status { empty, full, inProcess }
