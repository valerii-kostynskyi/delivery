// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_silo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListSiloEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListSiloItemModel silo) selectSilo,
    required TResult Function() completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListSiloItemModel silo)? selectSilo,
    TResult? Function()? completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListSiloItemModel silo)? selectSilo,
    TResult Function()? completeTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectSilo value) selectSilo,
    required TResult Function(CompleteTask value) completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectSilo value)? selectSilo,
    TResult? Function(CompleteTask value)? completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectSilo value)? selectSilo,
    TResult Function(CompleteTask value)? completeTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSiloEventCopyWith<$Res> {
  factory $ListSiloEventCopyWith(
          ListSiloEvent value, $Res Function(ListSiloEvent) then) =
      _$ListSiloEventCopyWithImpl<$Res, ListSiloEvent>;
}

/// @nodoc
class _$ListSiloEventCopyWithImpl<$Res, $Val extends ListSiloEvent>
    implements $ListSiloEventCopyWith<$Res> {
  _$ListSiloEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectSiloImplCopyWith<$Res> {
  factory _$$SelectSiloImplCopyWith(
          _$SelectSiloImpl value, $Res Function(_$SelectSiloImpl) then) =
      __$$SelectSiloImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListSiloItemModel silo});
}

/// @nodoc
class __$$SelectSiloImplCopyWithImpl<$Res>
    extends _$ListSiloEventCopyWithImpl<$Res, _$SelectSiloImpl>
    implements _$$SelectSiloImplCopyWith<$Res> {
  __$$SelectSiloImplCopyWithImpl(
      _$SelectSiloImpl _value, $Res Function(_$SelectSiloImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? silo = null,
  }) {
    return _then(_$SelectSiloImpl(
      null == silo
          ? _value.silo
          : silo // ignore: cast_nullable_to_non_nullable
              as ListSiloItemModel,
    ));
  }
}

/// @nodoc

class _$SelectSiloImpl implements SelectSilo {
  const _$SelectSiloImpl(this.silo);

  @override
  final ListSiloItemModel silo;

  @override
  String toString() {
    return 'ListSiloEvent.selectSilo(silo: $silo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectSiloImpl &&
            (identical(other.silo, silo) || other.silo == silo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, silo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectSiloImplCopyWith<_$SelectSiloImpl> get copyWith =>
      __$$SelectSiloImplCopyWithImpl<_$SelectSiloImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListSiloItemModel silo) selectSilo,
    required TResult Function() completeTask,
  }) {
    return selectSilo(silo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListSiloItemModel silo)? selectSilo,
    TResult? Function()? completeTask,
  }) {
    return selectSilo?.call(silo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListSiloItemModel silo)? selectSilo,
    TResult Function()? completeTask,
    required TResult orElse(),
  }) {
    if (selectSilo != null) {
      return selectSilo(silo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectSilo value) selectSilo,
    required TResult Function(CompleteTask value) completeTask,
  }) {
    return selectSilo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectSilo value)? selectSilo,
    TResult? Function(CompleteTask value)? completeTask,
  }) {
    return selectSilo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectSilo value)? selectSilo,
    TResult Function(CompleteTask value)? completeTask,
    required TResult orElse(),
  }) {
    if (selectSilo != null) {
      return selectSilo(this);
    }
    return orElse();
  }
}

abstract class SelectSilo implements ListSiloEvent {
  const factory SelectSilo(final ListSiloItemModel silo) = _$SelectSiloImpl;

  ListSiloItemModel get silo;
  @JsonKey(ignore: true)
  _$$SelectSiloImplCopyWith<_$SelectSiloImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteTaskImplCopyWith<$Res> {
  factory _$$CompleteTaskImplCopyWith(
          _$CompleteTaskImpl value, $Res Function(_$CompleteTaskImpl) then) =
      __$$CompleteTaskImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteTaskImplCopyWithImpl<$Res>
    extends _$ListSiloEventCopyWithImpl<$Res, _$CompleteTaskImpl>
    implements _$$CompleteTaskImplCopyWith<$Res> {
  __$$CompleteTaskImplCopyWithImpl(
      _$CompleteTaskImpl _value, $Res Function(_$CompleteTaskImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompleteTaskImpl implements CompleteTask {
  const _$CompleteTaskImpl();

  @override
  String toString() {
    return 'ListSiloEvent.completeTask()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompleteTaskImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListSiloItemModel silo) selectSilo,
    required TResult Function() completeTask,
  }) {
    return completeTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListSiloItemModel silo)? selectSilo,
    TResult? Function()? completeTask,
  }) {
    return completeTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListSiloItemModel silo)? selectSilo,
    TResult Function()? completeTask,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectSilo value) selectSilo,
    required TResult Function(CompleteTask value) completeTask,
  }) {
    return completeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectSilo value)? selectSilo,
    TResult? Function(CompleteTask value)? completeTask,
  }) {
    return completeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectSilo value)? selectSilo,
    TResult Function(CompleteTask value)? completeTask,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(this);
    }
    return orElse();
  }
}

abstract class CompleteTask implements ListSiloEvent {
  const factory CompleteTask() = _$CompleteTaskImpl;
}

/// @nodoc
mixin _$ListSiloState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ListSiloItemModel selectedSilo) selectedSilo,
    required TResult Function() taskCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ListSiloItemModel selectedSilo)? selectedSilo,
    TResult? Function()? taskCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ListSiloItemModel selectedSilo)? selectedSilo,
    TResult Function()? taskCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SelectedSilo value) selectedSilo,
    required TResult Function(TaskCompleted value) taskCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SelectedSilo value)? selectedSilo,
    TResult? Function(TaskCompleted value)? taskCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SelectedSilo value)? selectedSilo,
    TResult Function(TaskCompleted value)? taskCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSiloStateCopyWith<$Res> {
  factory $ListSiloStateCopyWith(
          ListSiloState value, $Res Function(ListSiloState) then) =
      _$ListSiloStateCopyWithImpl<$Res, ListSiloState>;
}

/// @nodoc
class _$ListSiloStateCopyWithImpl<$Res, $Val extends ListSiloState>
    implements $ListSiloStateCopyWith<$Res> {
  _$ListSiloStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ListSiloStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ListSiloState.initial()';
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
    required TResult Function(ListSiloItemModel selectedSilo) selectedSilo,
    required TResult Function() taskCompleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ListSiloItemModel selectedSilo)? selectedSilo,
    TResult? Function()? taskCompleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ListSiloItemModel selectedSilo)? selectedSilo,
    TResult Function()? taskCompleted,
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
    required TResult Function(SelectedSilo value) selectedSilo,
    required TResult Function(TaskCompleted value) taskCompleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SelectedSilo value)? selectedSilo,
    TResult? Function(TaskCompleted value)? taskCompleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SelectedSilo value)? selectedSilo,
    TResult Function(TaskCompleted value)? taskCompleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ListSiloState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SelectedSiloImplCopyWith<$Res> {
  factory _$$SelectedSiloImplCopyWith(
          _$SelectedSiloImpl value, $Res Function(_$SelectedSiloImpl) then) =
      __$$SelectedSiloImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListSiloItemModel selectedSilo});
}

/// @nodoc
class __$$SelectedSiloImplCopyWithImpl<$Res>
    extends _$ListSiloStateCopyWithImpl<$Res, _$SelectedSiloImpl>
    implements _$$SelectedSiloImplCopyWith<$Res> {
  __$$SelectedSiloImplCopyWithImpl(
      _$SelectedSiloImpl _value, $Res Function(_$SelectedSiloImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSilo = null,
  }) {
    return _then(_$SelectedSiloImpl(
      null == selectedSilo
          ? _value.selectedSilo
          : selectedSilo // ignore: cast_nullable_to_non_nullable
              as ListSiloItemModel,
    ));
  }
}

/// @nodoc

class _$SelectedSiloImpl implements SelectedSilo {
  const _$SelectedSiloImpl(this.selectedSilo);

  @override
  final ListSiloItemModel selectedSilo;

  @override
  String toString() {
    return 'ListSiloState.selectedSilo(selectedSilo: $selectedSilo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedSiloImpl &&
            (identical(other.selectedSilo, selectedSilo) ||
                other.selectedSilo == selectedSilo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedSilo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedSiloImplCopyWith<_$SelectedSiloImpl> get copyWith =>
      __$$SelectedSiloImplCopyWithImpl<_$SelectedSiloImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ListSiloItemModel selectedSilo) selectedSilo,
    required TResult Function() taskCompleted,
  }) {
    return selectedSilo(this.selectedSilo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ListSiloItemModel selectedSilo)? selectedSilo,
    TResult? Function()? taskCompleted,
  }) {
    return selectedSilo?.call(this.selectedSilo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ListSiloItemModel selectedSilo)? selectedSilo,
    TResult Function()? taskCompleted,
    required TResult orElse(),
  }) {
    if (selectedSilo != null) {
      return selectedSilo(this.selectedSilo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SelectedSilo value) selectedSilo,
    required TResult Function(TaskCompleted value) taskCompleted,
  }) {
    return selectedSilo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SelectedSilo value)? selectedSilo,
    TResult? Function(TaskCompleted value)? taskCompleted,
  }) {
    return selectedSilo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SelectedSilo value)? selectedSilo,
    TResult Function(TaskCompleted value)? taskCompleted,
    required TResult orElse(),
  }) {
    if (selectedSilo != null) {
      return selectedSilo(this);
    }
    return orElse();
  }
}

abstract class SelectedSilo implements ListSiloState {
  const factory SelectedSilo(final ListSiloItemModel selectedSilo) =
      _$SelectedSiloImpl;

  ListSiloItemModel get selectedSilo;
  @JsonKey(ignore: true)
  _$$SelectedSiloImplCopyWith<_$SelectedSiloImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskCompletedImplCopyWith<$Res> {
  factory _$$TaskCompletedImplCopyWith(
          _$TaskCompletedImpl value, $Res Function(_$TaskCompletedImpl) then) =
      __$$TaskCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskCompletedImplCopyWithImpl<$Res>
    extends _$ListSiloStateCopyWithImpl<$Res, _$TaskCompletedImpl>
    implements _$$TaskCompletedImplCopyWith<$Res> {
  __$$TaskCompletedImplCopyWithImpl(
      _$TaskCompletedImpl _value, $Res Function(_$TaskCompletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskCompletedImpl implements TaskCompleted {
  const _$TaskCompletedImpl();

  @override
  String toString() {
    return 'ListSiloState.taskCompleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskCompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ListSiloItemModel selectedSilo) selectedSilo,
    required TResult Function() taskCompleted,
  }) {
    return taskCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ListSiloItemModel selectedSilo)? selectedSilo,
    TResult? Function()? taskCompleted,
  }) {
    return taskCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ListSiloItemModel selectedSilo)? selectedSilo,
    TResult Function()? taskCompleted,
    required TResult orElse(),
  }) {
    if (taskCompleted != null) {
      return taskCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SelectedSilo value) selectedSilo,
    required TResult Function(TaskCompleted value) taskCompleted,
  }) {
    return taskCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SelectedSilo value)? selectedSilo,
    TResult? Function(TaskCompleted value)? taskCompleted,
  }) {
    return taskCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SelectedSilo value)? selectedSilo,
    TResult Function(TaskCompleted value)? taskCompleted,
    required TResult orElse(),
  }) {
    if (taskCompleted != null) {
      return taskCompleted(this);
    }
    return orElse();
  }
}

abstract class TaskCompleted implements ListSiloState {
  const factory TaskCompleted() = _$TaskCompletedImpl;
}
