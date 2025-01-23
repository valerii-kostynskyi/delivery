import 'package:delivery/data/models/task_model/task_model.dart';
import 'package:delivery/data/models/track_wraper/track_wraper.dart';
import 'package:delivery/presentation/blocks/task_list/task_list_bloc.dart';
import 'package:delivery/presentation/custom_widget/back_button_widget.dart';
import 'package:delivery/presentation/custom_widget/custom_button.dart';
import 'package:delivery/presentation/custom_widget/loading_screen.dart';
import 'package:delivery/presentation/pages/task_list/widget/task_list_item.dart';
import 'package:delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class TaskListView extends StatefulWidget {
  final int trackNumber;
  const TaskListView({
    super.key,
    required this.trackNumber,
  });

  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  final ScrollController _scrollController = ScrollController();
  bool _isAppBarCollapsed = false;
  bool _isShouldUpdate = false;

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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: _buildAppBar(context, theme),
      ),
      body: BlocBuilder<TaskListBloc, TaskListState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Initializing...')),
            loading: () => const LoadingScreen(),
            success: (taskList, trackNumber) =>
                _buildBody(context, taskList, trackNumber, theme),
            error: (errorMessage) =>
                _buildErrorState(context, errorMessage, theme),
          );
        },
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, ThemeData theme) {
    return Container(
      padding: const EdgeInsets.only(top: 48, left: 16, right: 16, bottom: 16),
      color: theme.scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 48,
                height: 48,
                child: BackButtonWidget(
                  onTap: () {
                    context.pop(_isShouldUpdate);
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BlocBuilder<TaskListBloc, TaskListState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        success: (taskList, trackNumber) => Text(
                          context.localizations.taskNumber(
                            widget.trackNumber,
                          ),
                          style: theme.textTheme.labelSmall!
                              .copyWith(fontSize: 20),
                        ),
                        orElse: () => const SizedBox.shrink(),
                      );
                    },
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
                child: refreshButton(theme),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    List<TaskModel> taskList,
    int trackNumber,
    ThemeData theme,
  ) {
    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 75),
      itemCount: taskList.length,
      itemBuilder: (context, index) {
        final TrackWraper trackWraper = TrackWraper(
          task: taskList[index],
          trackNumber: widget.trackNumber,
        );
        bool isClicable = !taskList[index].isLocked && !taskList[index].isDone;
        return TaskListItem(
          isClicable: isClicable,
          itemModel: trackWraper,
          onTap: isClicable
              ? () async {
                  final result = await context.push<bool>(
                    '/detail-task-page',
                    extra: trackWraper,
                  );

                  if (result is bool && result) {
                    context.read<TaskListBloc>().add(
                          LoadTaskList(trackNumber: trackNumber),
                        );
                    setState(() {
                      _isShouldUpdate = result;
                    });
                  }
                }
              : null,
        );
      },
    );
  }

  Widget _buildErrorState(
    BuildContext context,
    String errorMessage,
    ThemeData theme,
  ) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Виникла помилка: $errorMessage',
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            CustomButton(
              onPressed: () {
                context.read<TaskListBloc>().add(
                      TaskListEvent.loadTaskList(
                        trackNumber: widget.trackNumber,
                      ),
                    );
              },
              label: context.localizations.tryAgain,
            ),
          ],
        ),
      ),
    );
  }

  Widget refreshButton(ThemeData theme) {
    return GestureDetector(
      onTap: () {
        context.read<TaskListBloc>().add(
              TaskListEvent.loadTaskList(
                trackNumber: widget.trackNumber,
              ),
            );
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/icons/refresh.svg',
                    colorFilter: ColorFilter.mode(
                      theme.canvasColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                Text(
                  context.localizations.dataUpdated,
                  style: TextStyle(color: theme.canvasColor),
                ),
              ],
            ),
            backgroundColor: theme.colorScheme.secondary,
            duration: const Duration(seconds: 2),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: theme.hintColor,
            width: 1.0,
          ),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            'assets/icons/refresh.svg',
            colorFilter: ColorFilter.mode(
              theme.iconTheme.color!,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
