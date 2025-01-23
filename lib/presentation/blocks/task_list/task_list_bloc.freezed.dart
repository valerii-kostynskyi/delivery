// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskListEvent {
  int get trackNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int trackNumber) loadTaskList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int trackNumber)? loadTaskList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int trackNumber)? loadTaskList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTaskList value) loadTaskList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTaskList value)? loadTaskList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTaskList value)? loadTaskList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskListEventCopyWith<TaskListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListEventCopyWith<$Res> {
  factory $TaskListEventCopyWith(
          TaskListEvent value, $Res Function(TaskListEvent) then) =
      _$TaskListEventCopyWithImpl<$Res, TaskListEvent>;
  @useResult
  $Res call({int trackNumber});
}

/// @nodoc
class _$TaskListEventCopyWithImpl<$Res, $Val extends TaskListEvent>
    implements $TaskListEventCopyWith<$Res> {
  _$TaskListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackNumber = null,
  }) {
    return _then(_value.copyWith(
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadTaskListImplCopyWith<$Res>
    implements $TaskListEventCopyWith<$Res> {
  factory _$$LoadTaskListImplCopyWith(
          _$LoadTaskListImpl value, $Res Function(_$LoadTaskListImpl) then) =
      __$$LoadTaskListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int trackNumber});
}

/// @nodoc
class __$$LoadTaskListImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$LoadTaskListImpl>
    implements _$$LoadTaskListImplCopyWith<$Res> {
  __$$LoadTaskListImplCopyWithImpl(
      _$LoadTaskListImpl _value, $Res Function(_$LoadTaskListImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackNumber = null,
  }) {
    return _then(_$LoadTaskListImpl(
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadTaskListImpl implements LoadTaskList {
  const _$LoadTaskListImpl({required this.trackNumber});

  @override
  final int trackNumber;

  @override
  String toString() {
    return 'TaskListEvent.loadTaskList(trackNumber: $trackNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTaskListImpl &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackNumber);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTaskListImplCopyWith<_$LoadTaskListImpl> get copyWith =>
      __$$LoadTaskListImplCopyWithImpl<_$LoadTaskListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int trackNumber) loadTaskList,
  }) {
    return loadTaskList(trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int trackNumber)? loadTaskList,
  }) {
    return loadTaskList?.call(trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int trackNumber)? loadTaskList,
    required TResult orElse(),
  }) {
    if (loadTaskList != null) {
      return loadTaskList(trackNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTaskList value) loadTaskList,
  }) {
    return loadTaskList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTaskList value)? loadTaskList,
  }) {
    return loadTaskList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTaskList value)? loadTaskList,
    required TResult orElse(),
  }) {
    if (loadTaskList != null) {
      return loadTaskList(this);
    }
    return orElse();
  }
}

abstract class LoadTaskList implements TaskListEvent {
  const factory LoadTaskList({required final int trackNumber}) =
      _$LoadTaskListImpl;

  @override
  int get trackNumber;

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTaskListImplCopyWith<_$LoadTaskListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> taskList, int trackNumber)
        success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> taskList, int trackNumber)? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> taskList, int trackNumber)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListInitial value) initial,
    required TResult Function(TaskListLoading value) loading,
    required TResult Function(TaskListSuccess value) success,
    required TResult Function(TaskListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListInitial value)? initial,
    TResult? Function(TaskListLoading value)? loading,
    TResult? Function(TaskListSuccess value)? success,
    TResult? Function(TaskListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListInitial value)? initial,
    TResult Function(TaskListLoading value)? loading,
    TResult Function(TaskListSuccess value)? success,
    TResult Function(TaskListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListStateCopyWith<$Res> {
  factory $TaskListStateCopyWith(
          TaskListState value, $Res Function(TaskListState) then) =
      _$TaskListStateCopyWithImpl<$Res, TaskListState>;
}

/// @nodoc
class _$TaskListStateCopyWithImpl<$Res, $Val extends TaskListState>
    implements $TaskListStateCopyWith<$Res> {
  _$TaskListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TaskListInitialImplCopyWith<$Res> {
  factory _$$TaskListInitialImplCopyWith(_$TaskListInitialImpl value,
          $Res Function(_$TaskListInitialImpl) then) =
      __$$TaskListInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskListInitialImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListInitialImpl>
    implements _$$TaskListInitialImplCopyWith<$Res> {
  __$$TaskListInitialImplCopyWithImpl(
      _$TaskListInitialImpl _value, $Res Function(_$TaskListInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskListInitialImpl implements TaskListInitial {
  const _$TaskListInitialImpl();

  @override
  String toString() {
    return 'TaskListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskListInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> taskList, int trackNumber)
        success,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> taskList, int trackNumber)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> taskList, int trackNumber)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListInitial value) initial,
    required TResult Function(TaskListLoading value) loading,
    required TResult Function(TaskListSuccess value) success,
    required TResult Function(TaskListError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListInitial value)? initial,
    TResult? Function(TaskListLoading value)? loading,
    TResult? Function(TaskListSuccess value)? success,
    TResult? Function(TaskListError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListInitial value)? initial,
    TResult Function(TaskListLoading value)? loading,
    TResult Function(TaskListSuccess value)? success,
    TResult Function(TaskListError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TaskListInitial implements TaskListState {
  const factory TaskListInitial() = _$TaskListInitialImpl;
}

/// @nodoc
abstract class _$$TaskListLoadingImplCopyWith<$Res> {
  factory _$$TaskListLoadingImplCopyWith(_$TaskListLoadingImpl value,
          $Res Function(_$TaskListLoadingImpl) then) =
      __$$TaskListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskListLoadingImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListLoadingImpl>
    implements _$$TaskListLoadingImplCopyWith<$Res> {
  __$$TaskListLoadingImplCopyWithImpl(
      _$TaskListLoadingImpl _value, $Res Function(_$TaskListLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskListLoadingImpl implements TaskListLoading {
  const _$TaskListLoadingImpl();

  @override
  String toString() {
    return 'TaskListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> taskList, int trackNumber)
        success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> taskList, int trackNumber)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> taskList, int trackNumber)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListInitial value) initial,
    required TResult Function(TaskListLoading value) loading,
    required TResult Function(TaskListSuccess value) success,
    required TResult Function(TaskListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListInitial value)? initial,
    TResult? Function(TaskListLoading value)? loading,
    TResult? Function(TaskListSuccess value)? success,
    TResult? Function(TaskListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListInitial value)? initial,
    TResult Function(TaskListLoading value)? loading,
    TResult Function(TaskListSuccess value)? success,
    TResult Function(TaskListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TaskListLoading implements TaskListState {
  const factory TaskListLoading() = _$TaskListLoadingImpl;
}

/// @nodoc
abstract class _$$TaskListSuccessImplCopyWith<$Res> {
  factory _$$TaskListSuccessImplCopyWith(_$TaskListSuccessImpl value,
          $Res Function(_$TaskListSuccessImpl) then) =
      __$$TaskListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskModel> taskList, int trackNumber});
}

/// @nodoc
class __$$TaskListSuccessImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListSuccessImpl>
    implements _$$TaskListSuccessImplCopyWith<$Res> {
  __$$TaskListSuccessImplCopyWithImpl(
      _$TaskListSuccessImpl _value, $Res Function(_$TaskListSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskList = null,
    Object? trackNumber = null,
  }) {
    return _then(_$TaskListSuccessImpl(
      taskList: null == taskList
          ? _value._taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TaskListSuccessImpl implements TaskListSuccess {
  const _$TaskListSuccessImpl(
      {required final List<TaskModel> taskList, required this.trackNumber})
      : _taskList = taskList;

  final List<TaskModel> _taskList;
  @override
  List<TaskModel> get taskList {
    if (_taskList is EqualUnmodifiableListView) return _taskList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskList);
  }

  @override
  final int trackNumber;

  @override
  String toString() {
    return 'TaskListState.success(taskList: $taskList, trackNumber: $trackNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListSuccessImpl &&
            const DeepCollectionEquality().equals(other._taskList, _taskList) &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_taskList), trackNumber);

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListSuccessImplCopyWith<_$TaskListSuccessImpl> get copyWith =>
      __$$TaskListSuccessImplCopyWithImpl<_$TaskListSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> taskList, int trackNumber)
        success,
    required TResult Function(String errorMessage) error,
  }) {
    return success(taskList, trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> taskList, int trackNumber)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call(taskList, trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> taskList, int trackNumber)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(taskList, trackNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListInitial value) initial,
    required TResult Function(TaskListLoading value) loading,
    required TResult Function(TaskListSuccess value) success,
    required TResult Function(TaskListError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListInitial value)? initial,
    TResult? Function(TaskListLoading value)? loading,
    TResult? Function(TaskListSuccess value)? success,
    TResult? Function(TaskListError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListInitial value)? initial,
    TResult Function(TaskListLoading value)? loading,
    TResult Function(TaskListSuccess value)? success,
    TResult Function(TaskListError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TaskListSuccess implements TaskListState {
  const factory TaskListSuccess(
      {required final List<TaskModel> taskList,
      required final int trackNumber}) = _$TaskListSuccessImpl;

  List<TaskModel> get taskList;
  int get trackNumber;

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskListSuccessImplCopyWith<_$TaskListSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskListErrorImplCopyWith<$Res> {
  factory _$$TaskListErrorImplCopyWith(
          _$TaskListErrorImpl value, $Res Function(_$TaskListErrorImpl) then) =
      __$$TaskListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$TaskListErrorImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListErrorImpl>
    implements _$$TaskListErrorImplCopyWith<$Res> {
  __$$TaskListErrorImplCopyWithImpl(
      _$TaskListErrorImpl _value, $Res Function(_$TaskListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$TaskListErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskListErrorImpl implements TaskListError {
  const _$TaskListErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'TaskListState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListErrorImplCopyWith<_$TaskListErrorImpl> get copyWith =>
      __$$TaskListErrorImplCopyWithImpl<_$TaskListErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> taskList, int trackNumber)
        success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> taskList, int trackNumber)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> taskList, int trackNumber)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListInitial value) initial,
    required TResult Function(TaskListLoading value) loading,
    required TResult Function(TaskListSuccess value) success,
    required TResult Function(TaskListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListInitial value)? initial,
    TResult? Function(TaskListLoading value)? loading,
    TResult? Function(TaskListSuccess value)? success,
    TResult? Function(TaskListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListInitial value)? initial,
    TResult Function(TaskListLoading value)? loading,
    TResult Function(TaskListSuccess value)? success,
    TResult Function(TaskListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TaskListError implements TaskListState {
  const factory TaskListError({required final String errorMessage}) =
      _$TaskListErrorImpl;

  String get errorMessage;

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskListErrorImplCopyWith<_$TaskListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
