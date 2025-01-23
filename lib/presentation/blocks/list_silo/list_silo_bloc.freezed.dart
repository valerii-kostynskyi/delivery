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
  int get waybillId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int waybillId) loadSilos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int waybillId)? loadSilos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int waybillId)? loadSilos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSilos value) loadSilos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSilos value)? loadSilos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSilos value)? loadSilos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ListSiloEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListSiloEventCopyWith<ListSiloEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSiloEventCopyWith<$Res> {
  factory $ListSiloEventCopyWith(
          ListSiloEvent value, $Res Function(ListSiloEvent) then) =
      _$ListSiloEventCopyWithImpl<$Res, ListSiloEvent>;
  @useResult
  $Res call({int waybillId});
}

/// @nodoc
class _$ListSiloEventCopyWithImpl<$Res, $Val extends ListSiloEvent>
    implements $ListSiloEventCopyWith<$Res> {
  _$ListSiloEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListSiloEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waybillId = null,
  }) {
    return _then(_value.copyWith(
      waybillId: null == waybillId
          ? _value.waybillId
          : waybillId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadSilosImplCopyWith<$Res>
    implements $ListSiloEventCopyWith<$Res> {
  factory _$$LoadSilosImplCopyWith(
          _$LoadSilosImpl value, $Res Function(_$LoadSilosImpl) then) =
      __$$LoadSilosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int waybillId});
}

/// @nodoc
class __$$LoadSilosImplCopyWithImpl<$Res>
    extends _$ListSiloEventCopyWithImpl<$Res, _$LoadSilosImpl>
    implements _$$LoadSilosImplCopyWith<$Res> {
  __$$LoadSilosImplCopyWithImpl(
      _$LoadSilosImpl _value, $Res Function(_$LoadSilosImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListSiloEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waybillId = null,
  }) {
    return _then(_$LoadSilosImpl(
      waybillId: null == waybillId
          ? _value.waybillId
          : waybillId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadSilosImpl implements LoadSilos {
  const _$LoadSilosImpl({required this.waybillId});

  @override
  final int waybillId;

  @override
  String toString() {
    return 'ListSiloEvent.loadSilos(waybillId: $waybillId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSilosImpl &&
            (identical(other.waybillId, waybillId) ||
                other.waybillId == waybillId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, waybillId);

  /// Create a copy of ListSiloEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSilosImplCopyWith<_$LoadSilosImpl> get copyWith =>
      __$$LoadSilosImplCopyWithImpl<_$LoadSilosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int waybillId) loadSilos,
  }) {
    return loadSilos(waybillId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int waybillId)? loadSilos,
  }) {
    return loadSilos?.call(waybillId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int waybillId)? loadSilos,
    required TResult orElse(),
  }) {
    if (loadSilos != null) {
      return loadSilos(waybillId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSilos value) loadSilos,
  }) {
    return loadSilos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSilos value)? loadSilos,
  }) {
    return loadSilos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSilos value)? loadSilos,
    required TResult orElse(),
  }) {
    if (loadSilos != null) {
      return loadSilos(this);
    }
    return orElse();
  }
}

abstract class LoadSilos implements ListSiloEvent {
  const factory LoadSilos({required final int waybillId}) = _$LoadSilosImpl;

  @override
  int get waybillId;

  /// Create a copy of ListSiloEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSilosImplCopyWith<_$LoadSilosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListSiloState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ListSiloItemModel> silos) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ListSiloItemModel> silos)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ListSiloItemModel> silos)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListSiloInitial value) initial,
    required TResult Function(ListSiloLoading value) loading,
    required TResult Function(ListSiloSuccess value) success,
    required TResult Function(ListSiloError value) error,
    required TResult Function(ListSiloEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListSiloInitial value)? initial,
    TResult? Function(ListSiloLoading value)? loading,
    TResult? Function(ListSiloSuccess value)? success,
    TResult? Function(ListSiloError value)? error,
    TResult? Function(ListSiloEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListSiloInitial value)? initial,
    TResult Function(ListSiloLoading value)? loading,
    TResult Function(ListSiloSuccess value)? success,
    TResult Function(ListSiloError value)? error,
    TResult Function(ListSiloEmpty value)? empty,
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

  /// Create a copy of ListSiloState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ListSiloInitialImplCopyWith<$Res> {
  factory _$$ListSiloInitialImplCopyWith(_$ListSiloInitialImpl value,
          $Res Function(_$ListSiloInitialImpl) then) =
      __$$ListSiloInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListSiloInitialImplCopyWithImpl<$Res>
    extends _$ListSiloStateCopyWithImpl<$Res, _$ListSiloInitialImpl>
    implements _$$ListSiloInitialImplCopyWith<$Res> {
  __$$ListSiloInitialImplCopyWithImpl(
      _$ListSiloInitialImpl _value, $Res Function(_$ListSiloInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListSiloState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ListSiloInitialImpl implements ListSiloInitial {
  const _$ListSiloInitialImpl();

  @override
  String toString() {
    return 'ListSiloState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListSiloInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ListSiloItemModel> silos) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ListSiloItemModel> silos)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ListSiloItemModel> silos)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
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
    required TResult Function(ListSiloInitial value) initial,
    required TResult Function(ListSiloLoading value) loading,
    required TResult Function(ListSiloSuccess value) success,
    required TResult Function(ListSiloError value) error,
    required TResult Function(ListSiloEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListSiloInitial value)? initial,
    TResult? Function(ListSiloLoading value)? loading,
    TResult? Function(ListSiloSuccess value)? success,
    TResult? Function(ListSiloError value)? error,
    TResult? Function(ListSiloEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListSiloInitial value)? initial,
    TResult Function(ListSiloLoading value)? loading,
    TResult Function(ListSiloSuccess value)? success,
    TResult Function(ListSiloError value)? error,
    TResult Function(ListSiloEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ListSiloInitial implements ListSiloState {
  const factory ListSiloInitial() = _$ListSiloInitialImpl;
}

/// @nodoc
abstract class _$$ListSiloLoadingImplCopyWith<$Res> {
  factory _$$ListSiloLoadingImplCopyWith(_$ListSiloLoadingImpl value,
          $Res Function(_$ListSiloLoadingImpl) then) =
      __$$ListSiloLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListSiloLoadingImplCopyWithImpl<$Res>
    extends _$ListSiloStateCopyWithImpl<$Res, _$ListSiloLoadingImpl>
    implements _$$ListSiloLoadingImplCopyWith<$Res> {
  __$$ListSiloLoadingImplCopyWithImpl(
      _$ListSiloLoadingImpl _value, $Res Function(_$ListSiloLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListSiloState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ListSiloLoadingImpl implements ListSiloLoading {
  const _$ListSiloLoadingImpl();

  @override
  String toString() {
    return 'ListSiloState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListSiloLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ListSiloItemModel> silos) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ListSiloItemModel> silos)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ListSiloItemModel> silos)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
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
    required TResult Function(ListSiloInitial value) initial,
    required TResult Function(ListSiloLoading value) loading,
    required TResult Function(ListSiloSuccess value) success,
    required TResult Function(ListSiloError value) error,
    required TResult Function(ListSiloEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListSiloInitial value)? initial,
    TResult? Function(ListSiloLoading value)? loading,
    TResult? Function(ListSiloSuccess value)? success,
    TResult? Function(ListSiloError value)? error,
    TResult? Function(ListSiloEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListSiloInitial value)? initial,
    TResult Function(ListSiloLoading value)? loading,
    TResult Function(ListSiloSuccess value)? success,
    TResult Function(ListSiloError value)? error,
    TResult Function(ListSiloEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ListSiloLoading implements ListSiloState {
  const factory ListSiloLoading() = _$ListSiloLoadingImpl;
}

/// @nodoc
abstract class _$$ListSiloSuccessImplCopyWith<$Res> {
  factory _$$ListSiloSuccessImplCopyWith(_$ListSiloSuccessImpl value,
          $Res Function(_$ListSiloSuccessImpl) then) =
      __$$ListSiloSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ListSiloItemModel> silos});
}

/// @nodoc
class __$$ListSiloSuccessImplCopyWithImpl<$Res>
    extends _$ListSiloStateCopyWithImpl<$Res, _$ListSiloSuccessImpl>
    implements _$$ListSiloSuccessImplCopyWith<$Res> {
  __$$ListSiloSuccessImplCopyWithImpl(
      _$ListSiloSuccessImpl _value, $Res Function(_$ListSiloSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListSiloState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? silos = null,
  }) {
    return _then(_$ListSiloSuccessImpl(
      silos: null == silos
          ? _value._silos
          : silos // ignore: cast_nullable_to_non_nullable
              as List<ListSiloItemModel>,
    ));
  }
}

/// @nodoc

class _$ListSiloSuccessImpl implements ListSiloSuccess {
  const _$ListSiloSuccessImpl({required final List<ListSiloItemModel> silos})
      : _silos = silos;

  final List<ListSiloItemModel> _silos;
  @override
  List<ListSiloItemModel> get silos {
    if (_silos is EqualUnmodifiableListView) return _silos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_silos);
  }

  @override
  String toString() {
    return 'ListSiloState.success(silos: $silos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListSiloSuccessImpl &&
            const DeepCollectionEquality().equals(other._silos, _silos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_silos));

  /// Create a copy of ListSiloState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListSiloSuccessImplCopyWith<_$ListSiloSuccessImpl> get copyWith =>
      __$$ListSiloSuccessImplCopyWithImpl<_$ListSiloSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ListSiloItemModel> silos) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return success(silos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ListSiloItemModel> silos)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return success?.call(silos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ListSiloItemModel> silos)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(silos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListSiloInitial value) initial,
    required TResult Function(ListSiloLoading value) loading,
    required TResult Function(ListSiloSuccess value) success,
    required TResult Function(ListSiloError value) error,
    required TResult Function(ListSiloEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListSiloInitial value)? initial,
    TResult? Function(ListSiloLoading value)? loading,
    TResult? Function(ListSiloSuccess value)? success,
    TResult? Function(ListSiloError value)? error,
    TResult? Function(ListSiloEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListSiloInitial value)? initial,
    TResult Function(ListSiloLoading value)? loading,
    TResult Function(ListSiloSuccess value)? success,
    TResult Function(ListSiloError value)? error,
    TResult Function(ListSiloEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ListSiloSuccess implements ListSiloState {
  const factory ListSiloSuccess(
      {required final List<ListSiloItemModel> silos}) = _$ListSiloSuccessImpl;

  List<ListSiloItemModel> get silos;

  /// Create a copy of ListSiloState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListSiloSuccessImplCopyWith<_$ListSiloSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListSiloErrorImplCopyWith<$Res> {
  factory _$$ListSiloErrorImplCopyWith(
          _$ListSiloErrorImpl value, $Res Function(_$ListSiloErrorImpl) then) =
      __$$ListSiloErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ListSiloErrorImplCopyWithImpl<$Res>
    extends _$ListSiloStateCopyWithImpl<$Res, _$ListSiloErrorImpl>
    implements _$$ListSiloErrorImplCopyWith<$Res> {
  __$$ListSiloErrorImplCopyWithImpl(
      _$ListSiloErrorImpl _value, $Res Function(_$ListSiloErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListSiloState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ListSiloErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListSiloErrorImpl implements ListSiloError {
  const _$ListSiloErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ListSiloState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListSiloErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ListSiloState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListSiloErrorImplCopyWith<_$ListSiloErrorImpl> get copyWith =>
      __$$ListSiloErrorImplCopyWithImpl<_$ListSiloErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ListSiloItemModel> silos) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ListSiloItemModel> silos)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ListSiloItemModel> silos)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
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
    required TResult Function(ListSiloInitial value) initial,
    required TResult Function(ListSiloLoading value) loading,
    required TResult Function(ListSiloSuccess value) success,
    required TResult Function(ListSiloError value) error,
    required TResult Function(ListSiloEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListSiloInitial value)? initial,
    TResult? Function(ListSiloLoading value)? loading,
    TResult? Function(ListSiloSuccess value)? success,
    TResult? Function(ListSiloError value)? error,
    TResult? Function(ListSiloEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListSiloInitial value)? initial,
    TResult Function(ListSiloLoading value)? loading,
    TResult Function(ListSiloSuccess value)? success,
    TResult Function(ListSiloError value)? error,
    TResult Function(ListSiloEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListSiloError implements ListSiloState {
  const factory ListSiloError({required final String errorMessage}) =
      _$ListSiloErrorImpl;

  String get errorMessage;

  /// Create a copy of ListSiloState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListSiloErrorImplCopyWith<_$ListSiloErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListSiloEmptyImplCopyWith<$Res> {
  factory _$$ListSiloEmptyImplCopyWith(
          _$ListSiloEmptyImpl value, $Res Function(_$ListSiloEmptyImpl) then) =
      __$$ListSiloEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListSiloEmptyImplCopyWithImpl<$Res>
    extends _$ListSiloStateCopyWithImpl<$Res, _$ListSiloEmptyImpl>
    implements _$$ListSiloEmptyImplCopyWith<$Res> {
  __$$ListSiloEmptyImplCopyWithImpl(
      _$ListSiloEmptyImpl _value, $Res Function(_$ListSiloEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListSiloState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ListSiloEmptyImpl implements ListSiloEmpty {
  const _$ListSiloEmptyImpl();

  @override
  String toString() {
    return 'ListSiloState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListSiloEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ListSiloItemModel> silos) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ListSiloItemModel> silos)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ListSiloItemModel> silos)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListSiloInitial value) initial,
    required TResult Function(ListSiloLoading value) loading,
    required TResult Function(ListSiloSuccess value) success,
    required TResult Function(ListSiloError value) error,
    required TResult Function(ListSiloEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListSiloInitial value)? initial,
    TResult? Function(ListSiloLoading value)? loading,
    TResult? Function(ListSiloSuccess value)? success,
    TResult? Function(ListSiloError value)? error,
    TResult? Function(ListSiloEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListSiloInitial value)? initial,
    TResult Function(ListSiloLoading value)? loading,
    TResult Function(ListSiloSuccess value)? success,
    TResult Function(ListSiloError value)? error,
    TResult Function(ListSiloEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ListSiloEmpty implements ListSiloState {
  const factory ListSiloEmpty() = _$ListSiloEmptyImpl;
}
