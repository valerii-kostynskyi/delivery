// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailTaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TrackWraper trackItem) loadDetailTask,
    required TResult Function(DetailTaskSiloModel selectedSilo, int taskId)
        confirmCompletion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TrackWraper trackItem)? loadDetailTask,
    TResult? Function(DetailTaskSiloModel selectedSilo, int taskId)?
        confirmCompletion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrackWraper trackItem)? loadDetailTask,
    TResult Function(DetailTaskSiloModel selectedSilo, int taskId)?
        confirmCompletion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDetailTask value) loadDetailTask,
    required TResult Function(ConfirmCompletion value) confirmCompletion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDetailTask value)? loadDetailTask,
    TResult? Function(ConfirmCompletion value)? confirmCompletion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDetailTask value)? loadDetailTask,
    TResult Function(ConfirmCompletion value)? confirmCompletion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTaskEventCopyWith<$Res> {
  factory $DetailTaskEventCopyWith(
          DetailTaskEvent value, $Res Function(DetailTaskEvent) then) =
      _$DetailTaskEventCopyWithImpl<$Res, DetailTaskEvent>;
}

/// @nodoc
class _$DetailTaskEventCopyWithImpl<$Res, $Val extends DetailTaskEvent>
    implements $DetailTaskEventCopyWith<$Res> {
  _$DetailTaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailTaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadDetailTaskImplCopyWith<$Res> {
  factory _$$LoadDetailTaskImplCopyWith(_$LoadDetailTaskImpl value,
          $Res Function(_$LoadDetailTaskImpl) then) =
      __$$LoadDetailTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrackWraper trackItem});
}

/// @nodoc
class __$$LoadDetailTaskImplCopyWithImpl<$Res>
    extends _$DetailTaskEventCopyWithImpl<$Res, _$LoadDetailTaskImpl>
    implements _$$LoadDetailTaskImplCopyWith<$Res> {
  __$$LoadDetailTaskImplCopyWithImpl(
      _$LoadDetailTaskImpl _value, $Res Function(_$LoadDetailTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackItem = null,
  }) {
    return _then(_$LoadDetailTaskImpl(
      trackItem: null == trackItem
          ? _value.trackItem
          : trackItem // ignore: cast_nullable_to_non_nullable
              as TrackWraper,
    ));
  }
}

/// @nodoc

class _$LoadDetailTaskImpl implements LoadDetailTask {
  const _$LoadDetailTaskImpl({required this.trackItem});

  @override
  final TrackWraper trackItem;

  @override
  String toString() {
    return 'DetailTaskEvent.loadDetailTask(trackItem: $trackItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDetailTaskImpl &&
            (identical(other.trackItem, trackItem) ||
                other.trackItem == trackItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackItem);

  /// Create a copy of DetailTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadDetailTaskImplCopyWith<_$LoadDetailTaskImpl> get copyWith =>
      __$$LoadDetailTaskImplCopyWithImpl<_$LoadDetailTaskImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TrackWraper trackItem) loadDetailTask,
    required TResult Function(DetailTaskSiloModel selectedSilo, int taskId)
        confirmCompletion,
  }) {
    return loadDetailTask(trackItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TrackWraper trackItem)? loadDetailTask,
    TResult? Function(DetailTaskSiloModel selectedSilo, int taskId)?
        confirmCompletion,
  }) {
    return loadDetailTask?.call(trackItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrackWraper trackItem)? loadDetailTask,
    TResult Function(DetailTaskSiloModel selectedSilo, int taskId)?
        confirmCompletion,
    required TResult orElse(),
  }) {
    if (loadDetailTask != null) {
      return loadDetailTask(trackItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDetailTask value) loadDetailTask,
    required TResult Function(ConfirmCompletion value) confirmCompletion,
  }) {
    return loadDetailTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDetailTask value)? loadDetailTask,
    TResult? Function(ConfirmCompletion value)? confirmCompletion,
  }) {
    return loadDetailTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDetailTask value)? loadDetailTask,
    TResult Function(ConfirmCompletion value)? confirmCompletion,
    required TResult orElse(),
  }) {
    if (loadDetailTask != null) {
      return loadDetailTask(this);
    }
    return orElse();
  }
}

abstract class LoadDetailTask implements DetailTaskEvent {
  const factory LoadDetailTask({required final TrackWraper trackItem}) =
      _$LoadDetailTaskImpl;

  TrackWraper get trackItem;

  /// Create a copy of DetailTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadDetailTaskImplCopyWith<_$LoadDetailTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmCompletionImplCopyWith<$Res> {
  factory _$$ConfirmCompletionImplCopyWith(_$ConfirmCompletionImpl value,
          $Res Function(_$ConfirmCompletionImpl) then) =
      __$$ConfirmCompletionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailTaskSiloModel selectedSilo, int taskId});

  $DetailTaskSiloModelCopyWith<$Res> get selectedSilo;
}

/// @nodoc
class __$$ConfirmCompletionImplCopyWithImpl<$Res>
    extends _$DetailTaskEventCopyWithImpl<$Res, _$ConfirmCompletionImpl>
    implements _$$ConfirmCompletionImplCopyWith<$Res> {
  __$$ConfirmCompletionImplCopyWithImpl(_$ConfirmCompletionImpl _value,
      $Res Function(_$ConfirmCompletionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSilo = null,
    Object? taskId = null,
  }) {
    return _then(_$ConfirmCompletionImpl(
      selectedSilo: null == selectedSilo
          ? _value.selectedSilo
          : selectedSilo // ignore: cast_nullable_to_non_nullable
              as DetailTaskSiloModel,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of DetailTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailTaskSiloModelCopyWith<$Res> get selectedSilo {
    return $DetailTaskSiloModelCopyWith<$Res>(_value.selectedSilo, (value) {
      return _then(_value.copyWith(selectedSilo: value));
    });
  }
}

/// @nodoc

class _$ConfirmCompletionImpl implements ConfirmCompletion {
  const _$ConfirmCompletionImpl(
      {required this.selectedSilo, required this.taskId});

  @override
  final DetailTaskSiloModel selectedSilo;
  @override
  final int taskId;

  @override
  String toString() {
    return 'DetailTaskEvent.confirmCompletion(selectedSilo: $selectedSilo, taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmCompletionImpl &&
            (identical(other.selectedSilo, selectedSilo) ||
                other.selectedSilo == selectedSilo) &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedSilo, taskId);

  /// Create a copy of DetailTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmCompletionImplCopyWith<_$ConfirmCompletionImpl> get copyWith =>
      __$$ConfirmCompletionImplCopyWithImpl<_$ConfirmCompletionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TrackWraper trackItem) loadDetailTask,
    required TResult Function(DetailTaskSiloModel selectedSilo, int taskId)
        confirmCompletion,
  }) {
    return confirmCompletion(selectedSilo, taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TrackWraper trackItem)? loadDetailTask,
    TResult? Function(DetailTaskSiloModel selectedSilo, int taskId)?
        confirmCompletion,
  }) {
    return confirmCompletion?.call(selectedSilo, taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrackWraper trackItem)? loadDetailTask,
    TResult Function(DetailTaskSiloModel selectedSilo, int taskId)?
        confirmCompletion,
    required TResult orElse(),
  }) {
    if (confirmCompletion != null) {
      return confirmCompletion(selectedSilo, taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDetailTask value) loadDetailTask,
    required TResult Function(ConfirmCompletion value) confirmCompletion,
  }) {
    return confirmCompletion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDetailTask value)? loadDetailTask,
    TResult? Function(ConfirmCompletion value)? confirmCompletion,
  }) {
    return confirmCompletion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDetailTask value)? loadDetailTask,
    TResult Function(ConfirmCompletion value)? confirmCompletion,
    required TResult orElse(),
  }) {
    if (confirmCompletion != null) {
      return confirmCompletion(this);
    }
    return orElse();
  }
}

abstract class ConfirmCompletion implements DetailTaskEvent {
  const factory ConfirmCompletion(
      {required final DetailTaskSiloModel selectedSilo,
      required final int taskId}) = _$ConfirmCompletionImpl;

  DetailTaskSiloModel get selectedSilo;
  int get taskId;

  /// Create a copy of DetailTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmCompletionImplCopyWith<_$ConfirmCompletionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailTaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DetailTaskModel detailTask) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DetailTaskModel detailTask)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DetailTaskModel detailTask)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(_Completed value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(_Completed value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTaskStateCopyWith<$Res> {
  factory $DetailTaskStateCopyWith(
          DetailTaskState value, $Res Function(DetailTaskState) then) =
      _$DetailTaskStateCopyWithImpl<$Res, DetailTaskState>;
}

/// @nodoc
class _$DetailTaskStateCopyWithImpl<$Res, $Val extends DetailTaskState>
    implements $DetailTaskStateCopyWith<$Res> {
  _$DetailTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailTaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DetailTaskStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DetailTaskState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DetailTaskModel detailTask) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() completed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DetailTaskModel detailTask)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? completed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DetailTaskModel detailTask)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? completed,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(_Completed value) completed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(_Completed value)? completed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DetailTaskState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DetailTaskStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DetailTaskState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DetailTaskModel detailTask) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() completed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DetailTaskModel detailTask)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? completed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DetailTaskModel detailTask)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? completed,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(_Completed value) completed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(_Completed value)? completed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements DetailTaskState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailTaskModel detailTask});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$DetailTaskStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailTask = freezed,
  }) {
    return _then(_$SuccessImpl(
      detailTask: freezed == detailTask
          ? _value.detailTask
          : detailTask // ignore: cast_nullable_to_non_nullable
              as DetailTaskModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required this.detailTask});

  @override
  final DetailTaskModel detailTask;

  @override
  String toString() {
    return 'DetailTaskState.success(detailTask: $detailTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other.detailTask, detailTask));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(detailTask));

  /// Create a copy of DetailTaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DetailTaskModel detailTask) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() completed,
  }) {
    return success(detailTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DetailTaskModel detailTask)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? completed,
  }) {
    return success?.call(detailTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DetailTaskModel detailTask)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(detailTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(_Completed value) completed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(_Completed value)? completed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements DetailTaskState {
  const factory Success({required final DetailTaskModel detailTask}) =
      _$SuccessImpl;

  DetailTaskModel get detailTask;

  /// Create a copy of DetailTaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$DetailTaskStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DetailTaskState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of DetailTaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DetailTaskModel detailTask) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() completed,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DetailTaskModel detailTask)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? completed,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DetailTaskModel detailTask)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? completed,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(_Completed value) completed,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(_Completed value)? completed,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements DetailTaskState {
  const factory Error({required final String errorMessage}) = _$ErrorImpl;

  String get errorMessage;

  /// Create a copy of DetailTaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletedImplCopyWith<$Res> {
  factory _$$CompletedImplCopyWith(
          _$CompletedImpl value, $Res Function(_$CompletedImpl) then) =
      __$$CompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletedImplCopyWithImpl<$Res>
    extends _$DetailTaskStateCopyWithImpl<$Res, _$CompletedImpl>
    implements _$$CompletedImplCopyWith<$Res> {
  __$$CompletedImplCopyWithImpl(
      _$CompletedImpl _value, $Res Function(_$CompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompletedImpl implements _Completed {
  const _$CompletedImpl();

  @override
  String toString() {
    return 'DetailTaskState.completed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DetailTaskModel detailTask) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() completed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DetailTaskModel detailTask)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? completed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DetailTaskModel detailTask)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(_Completed value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(_Completed value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements DetailTaskState {
  const factory _Completed() = _$CompletedImpl;
}
