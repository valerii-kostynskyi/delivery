import 'package:dostavka/presentation/custom_widget/back_button_widget.dart';
import 'package:dostavka/presentation/pages/task_page/widget/task_model_item.dart';
import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TaskPage extends StatefulWidget {
  final int taskNumber;
  const TaskPage({
    super.key,
    required this.taskNumber,
  });

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
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
            expandedHeight: 120.0,
            leading: const SizedBox(),
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final double top = constraints.biggest.height;
                final bool isCollapsed = top <= kToolbarHeight + 80;

                return FlexibleSpaceBar(
                  centerTitle: true,
                  titlePadding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
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
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Stack(
                      alignment: AlignmentDirectional.topCenter,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              context.localizations
                                  .taskNumber(widget.taskNumber),
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              context.localizations.selectShipment,
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
              top: 16,
              right: 16,
              left: 16,
              bottom: 75,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final taskItemModel = TaskModel(
                  index: index + 1,
                  title: context.localizations.poultryHouseNumber(index + 1),
                  tons: 5,
                  status: index % 2 == 0
                      ? Status.full
                      : index % 3 == 0
                          ? Status.empty
                          : Status.inProcess,
                );

                return TaskModelItem(
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
}

class TaskModel {
  final int index;
  final String title;
  final double tons;
  final Status status;

  TaskModel({
    required this.index,
    required this.title,
    required this.tons,
    required this.status,
  });
}

enum Status { empty, full, inProcess }
