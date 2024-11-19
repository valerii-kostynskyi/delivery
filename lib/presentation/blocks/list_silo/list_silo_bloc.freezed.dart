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
    required TResult Function() loadSilos,
    required TResult Function(ListSiloItemModel silo) selectSilo,
    required TResult Function() completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSilos,
    TResult? Function(ListSiloItemModel silo)? selectSilo,
    TResult? Function()? completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSilos,
    TResult Function(ListSiloItemModel silo)? selectSilo,
    TResult Function()? completeTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSilosEvent value) loadSilos,
    required TResult Function(SelectSiloEvent value) selectSilo,
    required TResult Function(CompleteTaskEvent value) completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSilosEvent value)? loadSilos,
    TResult? Function(SelectSiloEvent value)? selectSilo,
    TResult? Function(CompleteTaskEvent value)? completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSilosEvent value)? loadSilos,
    TResult Function(SelectSiloEvent value)? selectSilo,
    TResult Function(CompleteTaskEvent value)? completeTask,
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
abstract class _$$LoadSilosEventImplCopyWith<$Res> {
  factory _$$LoadSilosEventImplCopyWith(_$LoadSilosEventImpl value,
          $Res Function(_$LoadSilosEventImpl) then) =
      __$$LoadSilosEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadSilosEventImplCopyWithImpl<$Res>
    extends _$ListSiloEventCopyWithImpl<$Res, _$LoadSilosEventImpl>
    implements _$$LoadSilosEventImplCopyWith<$Res> {
  __$$LoadSilosEventImplCopyWithImpl(
      _$LoadSilosEventImpl _value, $Res Function(_$LoadSilosEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadSilosEventImpl implements LoadSilosEvent {
  const _$LoadSilosEventImpl();

  @override
  String toString() {
    return 'ListSiloEvent.loadSilos()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadSilosEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSilos,
    required TResult Function(ListSiloItemModel silo) selectSilo,
    required TResult Function() completeTask,
  }) {
    return loadSilos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSilos,
    TResult? Function(ListSiloItemModel silo)? selectSilo,
    TResult? Function()? completeTask,
  }) {
    return loadSilos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSilos,
    TResult Function(ListSiloItemModel silo)? selectSilo,
    TResult Function()? completeTask,
    required TResult orElse(),
  }) {
    if (loadSilos != null) {
      return loadSilos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSilosEvent value) loadSilos,
    required TResult Function(SelectSiloEvent value) selectSilo,
    required TResult Function(CompleteTaskEvent value) completeTask,
  }) {
    return loadSilos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSilosEvent value)? loadSilos,
    TResult? Function(SelectSiloEvent value)? selectSilo,
    TResult? Function(CompleteTaskEvent value)? completeTask,
  }) {
    return loadSilos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSilosEvent value)? loadSilos,
    TResult Function(SelectSiloEvent value)? selectSilo,
    TResult Function(CompleteTaskEvent value)? completeTask,
    required TResult orElse(),
  }) {
    if (loadSilos != null) {
      return loadSilos(this);
    }
    return orElse();
  }
}

abstract class LoadSilosEvent implements ListSiloEvent {
  const factory LoadSilosEvent() = _$LoadSilosEventImpl;
}

/// @nodoc
abstract class _$$SelectSiloEventImplCopyWith<$Res> {
  factory _$$SelectSiloEventImplCopyWith(_$SelectSiloEventImpl value,
          $Res Function(_$SelectSiloEventImpl) then) =
      __$$SelectSiloEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListSiloItemModel silo});
}

/// @nodoc
class __$$SelectSiloEventImplCopyWithImpl<$Res>
    extends _$ListSiloEventCopyWithImpl<$Res, _$SelectSiloEventImpl>
    implements _$$SelectSiloEventImplCopyWith<$Res> {
  __$$SelectSiloEventImplCopyWithImpl(
      _$SelectSiloEventImpl _value, $Res Function(_$SelectSiloEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? silo = null,
  }) {
    return _then(_$SelectSiloEventImpl(
      null == silo
          ? _value.silo
          : silo // ignore: cast_nullable_to_non_nullable
              as ListSiloItemModel,
    ));
  }
}

/// @nodoc

class _$SelectSiloEventImpl implements SelectSiloEvent {
  const _$SelectSiloEventImpl(this.silo);

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
            other is _$SelectSiloEventImpl &&
            (identical(other.silo, silo) || other.silo == silo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, silo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectSiloEventImplCopyWith<_$SelectSiloEventImpl> get copyWith =>
      __$$SelectSiloEventImplCopyWithImpl<_$SelectSiloEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSilos,
    required TResult Function(ListSiloItemModel silo) selectSilo,
    required TResult Function() completeTask,
  }) {
    return selectSilo(silo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSilos,
    TResult? Function(ListSiloItemModel silo)? selectSilo,
    TResult? Function()? completeTask,
  }) {
    return selectSilo?.call(silo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSilos,
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
    required TResult Function(LoadSilosEvent value) loadSilos,
    required TResult Function(SelectSiloEvent value) selectSilo,
    required TResult Function(CompleteTaskEvent value) completeTask,
  }) {
    return selectSilo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSilosEvent value)? loadSilos,
    TResult? Function(SelectSiloEvent value)? selectSilo,
    TResult? Function(CompleteTaskEvent value)? completeTask,
  }) {
    return selectSilo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSilosEvent value)? loadSilos,
    TResult Function(SelectSiloEvent value)? selectSilo,
    TResult Function(CompleteTaskEvent value)? completeTask,
    required TResult orElse(),
  }) {
    if (selectSilo != null) {
      return selectSilo(this);
    }
    return orElse();
  }
}

abstract class SelectSiloEvent implements ListSiloEvent {
  const factory SelectSiloEvent(final ListSiloItemModel silo) =
      _$SelectSiloEventImpl;

  ListSiloItemModel get silo;
  @JsonKey(ignore: true)
  _$$SelectSiloEventImplCopyWith<_$SelectSiloEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteTaskEventImplCopyWith<$Res> {
  factory _$$CompleteTaskEventImplCopyWith(_$CompleteTaskEventImpl value,
          $Res Function(_$CompleteTaskEventImpl) then) =
      __$$CompleteTaskEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteTaskEventImplCopyWithImpl<$Res>
    extends _$ListSiloEventCopyWithImpl<$Res, _$CompleteTaskEventImpl>
    implements _$$CompleteTaskEventImplCopyWith<$Res> {
  __$$CompleteTaskEventImplCopyWithImpl(_$CompleteTaskEventImpl _value,
      $Res Function(_$CompleteTaskEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompleteTaskEventImpl implements CompleteTaskEvent {
  const _$CompleteTaskEventImpl();

  @override
  String toString() {
    return 'ListSiloEvent.completeTask()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompleteTaskEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSilos,
    required TResult Function(ListSiloItemModel silo) selectSilo,
    required TResult Function() completeTask,
  }) {
    return completeTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSilos,
    TResult? Function(ListSiloItemModel silo)? selectSilo,
    TResult? Function()? completeTask,
  }) {
    return completeTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSilos,
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
    required TResult Function(LoadSilosEvent value) loadSilos,
    required TResult Function(SelectSiloEvent value) selectSilo,
    required TResult Function(CompleteTaskEvent value) completeTask,
  }) {
    return completeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSilosEvent value)? loadSilos,
    TResult? Function(SelectSiloEvent value)? selectSilo,
    TResult? Function(CompleteTaskEvent value)? completeTask,
  }) {
    return completeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSilosEvent value)? loadSilos,
    TResult Function(SelectSiloEvent value)? selectSilo,
    TResult Function(CompleteTaskEvent value)? completeTask,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(this);
    }
    return orElse();
  }
}

abstract class CompleteTaskEvent implements ListSiloEvent {
  const factory CompleteTaskEvent() = _$CompleteTaskEventImpl;
}

/// @nodoc
mixin _$ListSiloState {
  ListSiloStatus get status => throw _privateConstructorUsedError;
  List<ListSiloItemModel> get silos => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListSiloStateCopyWith<ListSiloState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSiloStateCopyWith<$Res> {
  factory $ListSiloStateCopyWith(
          ListSiloState value, $Res Function(ListSiloState) then) =
      _$ListSiloStateCopyWithImpl<$Res, ListSiloState>;
  @useResult
  $Res call(
      {ListSiloStatus status,
      List<ListSiloItemModel> silos,
      String? errorMessage});
}

/// @nodoc
class _$ListSiloStateCopyWithImpl<$Res, $Val extends ListSiloState>
    implements $ListSiloStateCopyWith<$Res> {
  _$ListSiloStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? silos = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ListSiloStatus,
      silos: null == silos
          ? _value.silos
          : silos // ignore: cast_nullable_to_non_nullable
              as List<ListSiloItemModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListSiloStateImplCopyWith<$Res>
    implements $ListSiloStateCopyWith<$Res> {
  factory _$$ListSiloStateImplCopyWith(
          _$ListSiloStateImpl value, $Res Function(_$ListSiloStateImpl) then) =
      __$$ListSiloStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ListSiloStatus status,
      List<ListSiloItemModel> silos,
      String? errorMessage});
}

/// @nodoc
class __$$ListSiloStateImplCopyWithImpl<$Res>
    extends _$ListSiloStateCopyWithImpl<$Res, _$ListSiloStateImpl>
    implements _$$ListSiloStateImplCopyWith<$Res> {
  __$$ListSiloStateImplCopyWithImpl(
      _$ListSiloStateImpl _value, $Res Function(_$ListSiloStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? silos = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ListSiloStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ListSiloStatus,
      silos: null == silos
          ? _value._silos
          : silos // ignore: cast_nullable_to_non_nullable
              as List<ListSiloItemModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ListSiloStateImpl implements _ListSiloState {
  const _$ListSiloStateImpl(
      {this.status = ListSiloStatus.initial,
      final List<ListSiloItemModel> silos = const [],
      this.errorMessage})
      : _silos = silos;

  @override
  @JsonKey()
  final ListSiloStatus status;
  final List<ListSiloItemModel> _silos;
  @override
  @JsonKey()
  List<ListSiloItemModel> get silos {
    if (_silos is EqualUnmodifiableListView) return _silos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_silos);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ListSiloState(status: $status, silos: $silos, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListSiloStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._silos, _silos) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_silos), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListSiloStateImplCopyWith<_$ListSiloStateImpl> get copyWith =>
      __$$ListSiloStateImplCopyWithImpl<_$ListSiloStateImpl>(this, _$identity);
}

abstract class _ListSiloState implements ListSiloState {
  const factory _ListSiloState(
      {final ListSiloStatus status,
      final List<ListSiloItemModel> silos,
      final String? errorMessage}) = _$ListSiloStateImpl;

  @override
  ListSiloStatus get status;
  @override
  List<ListSiloItemModel> get silos;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ListSiloStateImplCopyWith<_$ListSiloStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
