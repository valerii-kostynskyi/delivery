// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startScan,
    required TResult Function() retryScan,
    required TResult Function() initializeCarNumber,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startScan,
    TResult? Function()? retryScan,
    TResult? Function()? initializeCarNumber,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startScan,
    TResult Function()? retryScan,
    TResult Function()? initializeCarNumber,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartScan value) startScan,
    required TResult Function(RetryScan value) retryScan,
    required TResult Function(InitializeCarNumber value) initializeCarNumber,
    required TResult Function(Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartScan value)? startScan,
    TResult? Function(RetryScan value)? retryScan,
    TResult? Function(InitializeCarNumber value)? initializeCarNumber,
    TResult? Function(Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartScan value)? startScan,
    TResult Function(RetryScan value)? retryScan,
    TResult Function(InitializeCarNumber value)? initializeCarNumber,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanEventCopyWith<$Res> {
  factory $ScanEventCopyWith(ScanEvent value, $Res Function(ScanEvent) then) =
      _$ScanEventCopyWithImpl<$Res, ScanEvent>;
}

/// @nodoc
class _$ScanEventCopyWithImpl<$Res, $Val extends ScanEvent>
    implements $ScanEventCopyWith<$Res> {
  _$ScanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScanEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartScanImplCopyWith<$Res> {
  factory _$$StartScanImplCopyWith(
          _$StartScanImpl value, $Res Function(_$StartScanImpl) then) =
      __$$StartScanImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartScanImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$StartScanImpl>
    implements _$$StartScanImplCopyWith<$Res> {
  __$$StartScanImplCopyWithImpl(
      _$StartScanImpl _value, $Res Function(_$StartScanImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartScanImpl implements StartScan {
  const _$StartScanImpl();

  @override
  String toString() {
    return 'ScanEvent.startScan()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartScanImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startScan,
    required TResult Function() retryScan,
    required TResult Function() initializeCarNumber,
    required TResult Function() logout,
  }) {
    return startScan();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startScan,
    TResult? Function()? retryScan,
    TResult? Function()? initializeCarNumber,
    TResult? Function()? logout,
  }) {
    return startScan?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startScan,
    TResult Function()? retryScan,
    TResult Function()? initializeCarNumber,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (startScan != null) {
      return startScan();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartScan value) startScan,
    required TResult Function(RetryScan value) retryScan,
    required TResult Function(InitializeCarNumber value) initializeCarNumber,
    required TResult Function(Logout value) logout,
  }) {
    return startScan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartScan value)? startScan,
    TResult? Function(RetryScan value)? retryScan,
    TResult? Function(InitializeCarNumber value)? initializeCarNumber,
    TResult? Function(Logout value)? logout,
  }) {
    return startScan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartScan value)? startScan,
    TResult Function(RetryScan value)? retryScan,
    TResult Function(InitializeCarNumber value)? initializeCarNumber,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (startScan != null) {
      return startScan(this);
    }
    return orElse();
  }
}

abstract class StartScan implements ScanEvent {
  const factory StartScan() = _$StartScanImpl;
}

/// @nodoc
abstract class _$$RetryScanImplCopyWith<$Res> {
  factory _$$RetryScanImplCopyWith(
          _$RetryScanImpl value, $Res Function(_$RetryScanImpl) then) =
      __$$RetryScanImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetryScanImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$RetryScanImpl>
    implements _$$RetryScanImplCopyWith<$Res> {
  __$$RetryScanImplCopyWithImpl(
      _$RetryScanImpl _value, $Res Function(_$RetryScanImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RetryScanImpl implements RetryScan {
  const _$RetryScanImpl();

  @override
  String toString() {
    return 'ScanEvent.retryScan()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RetryScanImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startScan,
    required TResult Function() retryScan,
    required TResult Function() initializeCarNumber,
    required TResult Function() logout,
  }) {
    return retryScan();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startScan,
    TResult? Function()? retryScan,
    TResult? Function()? initializeCarNumber,
    TResult? Function()? logout,
  }) {
    return retryScan?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startScan,
    TResult Function()? retryScan,
    TResult Function()? initializeCarNumber,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (retryScan != null) {
      return retryScan();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartScan value) startScan,
    required TResult Function(RetryScan value) retryScan,
    required TResult Function(InitializeCarNumber value) initializeCarNumber,
    required TResult Function(Logout value) logout,
  }) {
    return retryScan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartScan value)? startScan,
    TResult? Function(RetryScan value)? retryScan,
    TResult? Function(InitializeCarNumber value)? initializeCarNumber,
    TResult? Function(Logout value)? logout,
  }) {
    return retryScan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartScan value)? startScan,
    TResult Function(RetryScan value)? retryScan,
    TResult Function(InitializeCarNumber value)? initializeCarNumber,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (retryScan != null) {
      return retryScan(this);
    }
    return orElse();
  }
}

abstract class RetryScan implements ScanEvent {
  const factory RetryScan() = _$RetryScanImpl;
}

/// @nodoc
abstract class _$$InitializeCarNumberImplCopyWith<$Res> {
  factory _$$InitializeCarNumberImplCopyWith(_$InitializeCarNumberImpl value,
          $Res Function(_$InitializeCarNumberImpl) then) =
      __$$InitializeCarNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCarNumberImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$InitializeCarNumberImpl>
    implements _$$InitializeCarNumberImplCopyWith<$Res> {
  __$$InitializeCarNumberImplCopyWithImpl(_$InitializeCarNumberImpl _value,
      $Res Function(_$InitializeCarNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeCarNumberImpl implements InitializeCarNumber {
  const _$InitializeCarNumberImpl();

  @override
  String toString() {
    return 'ScanEvent.initializeCarNumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeCarNumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startScan,
    required TResult Function() retryScan,
    required TResult Function() initializeCarNumber,
    required TResult Function() logout,
  }) {
    return initializeCarNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startScan,
    TResult? Function()? retryScan,
    TResult? Function()? initializeCarNumber,
    TResult? Function()? logout,
  }) {
    return initializeCarNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startScan,
    TResult Function()? retryScan,
    TResult Function()? initializeCarNumber,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (initializeCarNumber != null) {
      return initializeCarNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartScan value) startScan,
    required TResult Function(RetryScan value) retryScan,
    required TResult Function(InitializeCarNumber value) initializeCarNumber,
    required TResult Function(Logout value) logout,
  }) {
    return initializeCarNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartScan value)? startScan,
    TResult? Function(RetryScan value)? retryScan,
    TResult? Function(InitializeCarNumber value)? initializeCarNumber,
    TResult? Function(Logout value)? logout,
  }) {
    return initializeCarNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartScan value)? startScan,
    TResult Function(RetryScan value)? retryScan,
    TResult Function(InitializeCarNumber value)? initializeCarNumber,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (initializeCarNumber != null) {
      return initializeCarNumber(this);
    }
    return orElse();
  }
}

abstract class InitializeCarNumber implements ScanEvent {
  const factory InitializeCarNumber() = _$InitializeCarNumberImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'ScanEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startScan,
    required TResult Function() retryScan,
    required TResult Function() initializeCarNumber,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startScan,
    TResult? Function()? retryScan,
    TResult? Function()? initializeCarNumber,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startScan,
    TResult Function()? retryScan,
    TResult Function()? initializeCarNumber,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartScan value) startScan,
    required TResult Function(RetryScan value) retryScan,
    required TResult Function(InitializeCarNumber value) initializeCarNumber,
    required TResult Function(Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartScan value)? startScan,
    TResult? Function(RetryScan value)? retryScan,
    TResult? Function(InitializeCarNumber value)? initializeCarNumber,
    TResult? Function(Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartScan value)? startScan,
    TResult Function(RetryScan value)? retryScan,
    TResult Function(InitializeCarNumber value)? initializeCarNumber,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements ScanEvent {
  const factory Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$ScanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int waybillId, String barcode) success,
    required TResult Function(String message) error,
    required TResult Function(String carNumber) initialWithCarNumber,
    required TResult Function() logoutSuccess,
    required TResult Function(String ttnNumber, bool isTimeOutError)
        errorWithWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int waybillId, String barcode)? success,
    TResult? Function(String message)? error,
    TResult? Function(String carNumber)? initialWithCarNumber,
    TResult? Function()? logoutSuccess,
    TResult? Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int waybillId, String barcode)? success,
    TResult Function(String message)? error,
    TResult Function(String carNumber)? initialWithCarNumber,
    TResult Function()? logoutSuccess,
    TResult Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(InitialWithCarNumber value) initialWithCarNumber,
    required TResult Function(LogoutSuccess value) logoutSuccess,
    required TResult Function(_ErrorWithWidget value) errorWithWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult? Function(LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ErrorWithWidget value)? errorWithWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult Function(LogoutSuccess value)? logoutSuccess,
    TResult Function(_ErrorWithWidget value)? errorWithWidget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanStateCopyWith<$Res> {
  factory $ScanStateCopyWith(ScanState value, $Res Function(ScanState) then) =
      _$ScanStateCopyWithImpl<$Res, ScanState>;
}

/// @nodoc
class _$ScanStateCopyWithImpl<$Res, $Val extends ScanState>
    implements $ScanStateCopyWith<$Res> {
  _$ScanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScanState
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
    extends _$ScanStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ScanState.initial()';
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
    required TResult Function(int waybillId, String barcode) success,
    required TResult Function(String message) error,
    required TResult Function(String carNumber) initialWithCarNumber,
    required TResult Function() logoutSuccess,
    required TResult Function(String ttnNumber, bool isTimeOutError)
        errorWithWidget,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int waybillId, String barcode)? success,
    TResult? Function(String message)? error,
    TResult? Function(String carNumber)? initialWithCarNumber,
    TResult? Function()? logoutSuccess,
    TResult? Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int waybillId, String barcode)? success,
    TResult Function(String message)? error,
    TResult Function(String carNumber)? initialWithCarNumber,
    TResult Function()? logoutSuccess,
    TResult Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
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
    required TResult Function(InitialWithCarNumber value) initialWithCarNumber,
    required TResult Function(LogoutSuccess value) logoutSuccess,
    required TResult Function(_ErrorWithWidget value) errorWithWidget,
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
    TResult? Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult? Function(LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ErrorWithWidget value)? errorWithWidget,
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
    TResult Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult Function(LogoutSuccess value)? logoutSuccess,
    TResult Function(_ErrorWithWidget value)? errorWithWidget,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ScanState {
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
    extends _$ScanStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ScanState.loading()';
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
    required TResult Function(int waybillId, String barcode) success,
    required TResult Function(String message) error,
    required TResult Function(String carNumber) initialWithCarNumber,
    required TResult Function() logoutSuccess,
    required TResult Function(String ttnNumber, bool isTimeOutError)
        errorWithWidget,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int waybillId, String barcode)? success,
    TResult? Function(String message)? error,
    TResult? Function(String carNumber)? initialWithCarNumber,
    TResult? Function()? logoutSuccess,
    TResult? Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int waybillId, String barcode)? success,
    TResult Function(String message)? error,
    TResult Function(String carNumber)? initialWithCarNumber,
    TResult Function()? logoutSuccess,
    TResult Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
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
    required TResult Function(InitialWithCarNumber value) initialWithCarNumber,
    required TResult Function(LogoutSuccess value) logoutSuccess,
    required TResult Function(_ErrorWithWidget value) errorWithWidget,
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
    TResult? Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult? Function(LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ErrorWithWidget value)? errorWithWidget,
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
    TResult Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult Function(LogoutSuccess value)? logoutSuccess,
    TResult Function(_ErrorWithWidget value)? errorWithWidget,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ScanState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int waybillId, String barcode});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waybillId = null,
    Object? barcode = null,
  }) {
    return _then(_$SuccessImpl(
      waybillId: null == waybillId
          ? _value.waybillId
          : waybillId // ignore: cast_nullable_to_non_nullable
              as int,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required this.waybillId, required this.barcode});

  @override
  final int waybillId;
  @override
  final String barcode;

  @override
  String toString() {
    return 'ScanState.success(waybillId: $waybillId, barcode: $barcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.waybillId, waybillId) ||
                other.waybillId == waybillId) &&
            (identical(other.barcode, barcode) || other.barcode == barcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, waybillId, barcode);

  /// Create a copy of ScanState
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
    required TResult Function(int waybillId, String barcode) success,
    required TResult Function(String message) error,
    required TResult Function(String carNumber) initialWithCarNumber,
    required TResult Function() logoutSuccess,
    required TResult Function(String ttnNumber, bool isTimeOutError)
        errorWithWidget,
  }) {
    return success(waybillId, barcode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int waybillId, String barcode)? success,
    TResult? Function(String message)? error,
    TResult? Function(String carNumber)? initialWithCarNumber,
    TResult? Function()? logoutSuccess,
    TResult? Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
  }) {
    return success?.call(waybillId, barcode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int waybillId, String barcode)? success,
    TResult Function(String message)? error,
    TResult Function(String carNumber)? initialWithCarNumber,
    TResult Function()? logoutSuccess,
    TResult Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(waybillId, barcode);
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
    required TResult Function(InitialWithCarNumber value) initialWithCarNumber,
    required TResult Function(LogoutSuccess value) logoutSuccess,
    required TResult Function(_ErrorWithWidget value) errorWithWidget,
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
    TResult? Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult? Function(LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ErrorWithWidget value)? errorWithWidget,
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
    TResult Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult Function(LogoutSuccess value)? logoutSuccess,
    TResult Function(_ErrorWithWidget value)? errorWithWidget,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements ScanState {
  const factory Success(
      {required final int waybillId,
      required final String barcode}) = _$SuccessImpl;

  int get waybillId;
  String get barcode;

  /// Create a copy of ScanState
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
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ScanState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ScanState
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
    required TResult Function(int waybillId, String barcode) success,
    required TResult Function(String message) error,
    required TResult Function(String carNumber) initialWithCarNumber,
    required TResult Function() logoutSuccess,
    required TResult Function(String ttnNumber, bool isTimeOutError)
        errorWithWidget,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int waybillId, String barcode)? success,
    TResult? Function(String message)? error,
    TResult? Function(String carNumber)? initialWithCarNumber,
    TResult? Function()? logoutSuccess,
    TResult? Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int waybillId, String barcode)? success,
    TResult Function(String message)? error,
    TResult Function(String carNumber)? initialWithCarNumber,
    TResult Function()? logoutSuccess,
    TResult Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
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
    required TResult Function(InitialWithCarNumber value) initialWithCarNumber,
    required TResult Function(LogoutSuccess value) logoutSuccess,
    required TResult Function(_ErrorWithWidget value) errorWithWidget,
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
    TResult? Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult? Function(LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ErrorWithWidget value)? errorWithWidget,
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
    TResult Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult Function(LogoutSuccess value)? logoutSuccess,
    TResult Function(_ErrorWithWidget value)? errorWithWidget,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ScanState {
  const factory Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialWithCarNumberImplCopyWith<$Res> {
  factory _$$InitialWithCarNumberImplCopyWith(_$InitialWithCarNumberImpl value,
          $Res Function(_$InitialWithCarNumberImpl) then) =
      __$$InitialWithCarNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String carNumber});
}

/// @nodoc
class __$$InitialWithCarNumberImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$InitialWithCarNumberImpl>
    implements _$$InitialWithCarNumberImplCopyWith<$Res> {
  __$$InitialWithCarNumberImplCopyWithImpl(_$InitialWithCarNumberImpl _value,
      $Res Function(_$InitialWithCarNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carNumber = null,
  }) {
    return _then(_$InitialWithCarNumberImpl(
      null == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialWithCarNumberImpl implements InitialWithCarNumber {
  const _$InitialWithCarNumberImpl(this.carNumber);

  @override
  final String carNumber;

  @override
  String toString() {
    return 'ScanState.initialWithCarNumber(carNumber: $carNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialWithCarNumberImpl &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carNumber);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialWithCarNumberImplCopyWith<_$InitialWithCarNumberImpl>
      get copyWith =>
          __$$InitialWithCarNumberImplCopyWithImpl<_$InitialWithCarNumberImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int waybillId, String barcode) success,
    required TResult Function(String message) error,
    required TResult Function(String carNumber) initialWithCarNumber,
    required TResult Function() logoutSuccess,
    required TResult Function(String ttnNumber, bool isTimeOutError)
        errorWithWidget,
  }) {
    return initialWithCarNumber(carNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int waybillId, String barcode)? success,
    TResult? Function(String message)? error,
    TResult? Function(String carNumber)? initialWithCarNumber,
    TResult? Function()? logoutSuccess,
    TResult? Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
  }) {
    return initialWithCarNumber?.call(carNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int waybillId, String barcode)? success,
    TResult Function(String message)? error,
    TResult Function(String carNumber)? initialWithCarNumber,
    TResult Function()? logoutSuccess,
    TResult Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
    required TResult orElse(),
  }) {
    if (initialWithCarNumber != null) {
      return initialWithCarNumber(carNumber);
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
    required TResult Function(InitialWithCarNumber value) initialWithCarNumber,
    required TResult Function(LogoutSuccess value) logoutSuccess,
    required TResult Function(_ErrorWithWidget value) errorWithWidget,
  }) {
    return initialWithCarNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult? Function(LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ErrorWithWidget value)? errorWithWidget,
  }) {
    return initialWithCarNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult Function(LogoutSuccess value)? logoutSuccess,
    TResult Function(_ErrorWithWidget value)? errorWithWidget,
    required TResult orElse(),
  }) {
    if (initialWithCarNumber != null) {
      return initialWithCarNumber(this);
    }
    return orElse();
  }
}

abstract class InitialWithCarNumber implements ScanState {
  const factory InitialWithCarNumber(final String carNumber) =
      _$InitialWithCarNumberImpl;

  String get carNumber;

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialWithCarNumberImplCopyWith<_$InitialWithCarNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutSuccessImplCopyWith<$Res> {
  factory _$$LogoutSuccessImplCopyWith(
          _$LogoutSuccessImpl value, $Res Function(_$LogoutSuccessImpl) then) =
      __$$LogoutSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutSuccessImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$LogoutSuccessImpl>
    implements _$$LogoutSuccessImplCopyWith<$Res> {
  __$$LogoutSuccessImplCopyWithImpl(
      _$LogoutSuccessImpl _value, $Res Function(_$LogoutSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutSuccessImpl implements LogoutSuccess {
  const _$LogoutSuccessImpl();

  @override
  String toString() {
    return 'ScanState.logoutSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int waybillId, String barcode) success,
    required TResult Function(String message) error,
    required TResult Function(String carNumber) initialWithCarNumber,
    required TResult Function() logoutSuccess,
    required TResult Function(String ttnNumber, bool isTimeOutError)
        errorWithWidget,
  }) {
    return logoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int waybillId, String barcode)? success,
    TResult? Function(String message)? error,
    TResult? Function(String carNumber)? initialWithCarNumber,
    TResult? Function()? logoutSuccess,
    TResult? Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
  }) {
    return logoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int waybillId, String barcode)? success,
    TResult Function(String message)? error,
    TResult Function(String carNumber)? initialWithCarNumber,
    TResult Function()? logoutSuccess,
    TResult Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess();
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
    required TResult Function(InitialWithCarNumber value) initialWithCarNumber,
    required TResult Function(LogoutSuccess value) logoutSuccess,
    required TResult Function(_ErrorWithWidget value) errorWithWidget,
  }) {
    return logoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult? Function(LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ErrorWithWidget value)? errorWithWidget,
  }) {
    return logoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult Function(LogoutSuccess value)? logoutSuccess,
    TResult Function(_ErrorWithWidget value)? errorWithWidget,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess(this);
    }
    return orElse();
  }
}

abstract class LogoutSuccess implements ScanState {
  const factory LogoutSuccess() = _$LogoutSuccessImpl;
}

/// @nodoc
abstract class _$$ErrorWithWidgetImplCopyWith<$Res> {
  factory _$$ErrorWithWidgetImplCopyWith(_$ErrorWithWidgetImpl value,
          $Res Function(_$ErrorWithWidgetImpl) then) =
      __$$ErrorWithWidgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ttnNumber, bool isTimeOutError});
}

/// @nodoc
class __$$ErrorWithWidgetImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$ErrorWithWidgetImpl>
    implements _$$ErrorWithWidgetImplCopyWith<$Res> {
  __$$ErrorWithWidgetImplCopyWithImpl(
      _$ErrorWithWidgetImpl _value, $Res Function(_$ErrorWithWidgetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ttnNumber = null,
    Object? isTimeOutError = null,
  }) {
    return _then(_$ErrorWithWidgetImpl(
      ttnNumber: null == ttnNumber
          ? _value.ttnNumber
          : ttnNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isTimeOutError: null == isTimeOutError
          ? _value.isTimeOutError
          : isTimeOutError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ErrorWithWidgetImpl implements _ErrorWithWidget {
  const _$ErrorWithWidgetImpl(
      {required this.ttnNumber, required this.isTimeOutError});

  @override
  final String ttnNumber;
  @override
  final bool isTimeOutError;

  @override
  String toString() {
    return 'ScanState.errorWithWidget(ttnNumber: $ttnNumber, isTimeOutError: $isTimeOutError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorWithWidgetImpl &&
            (identical(other.ttnNumber, ttnNumber) ||
                other.ttnNumber == ttnNumber) &&
            (identical(other.isTimeOutError, isTimeOutError) ||
                other.isTimeOutError == isTimeOutError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ttnNumber, isTimeOutError);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorWithWidgetImplCopyWith<_$ErrorWithWidgetImpl> get copyWith =>
      __$$ErrorWithWidgetImplCopyWithImpl<_$ErrorWithWidgetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int waybillId, String barcode) success,
    required TResult Function(String message) error,
    required TResult Function(String carNumber) initialWithCarNumber,
    required TResult Function() logoutSuccess,
    required TResult Function(String ttnNumber, bool isTimeOutError)
        errorWithWidget,
  }) {
    return errorWithWidget(ttnNumber, isTimeOutError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int waybillId, String barcode)? success,
    TResult? Function(String message)? error,
    TResult? Function(String carNumber)? initialWithCarNumber,
    TResult? Function()? logoutSuccess,
    TResult? Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
  }) {
    return errorWithWidget?.call(ttnNumber, isTimeOutError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int waybillId, String barcode)? success,
    TResult Function(String message)? error,
    TResult Function(String carNumber)? initialWithCarNumber,
    TResult Function()? logoutSuccess,
    TResult Function(String ttnNumber, bool isTimeOutError)? errorWithWidget,
    required TResult orElse(),
  }) {
    if (errorWithWidget != null) {
      return errorWithWidget(ttnNumber, isTimeOutError);
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
    required TResult Function(InitialWithCarNumber value) initialWithCarNumber,
    required TResult Function(LogoutSuccess value) logoutSuccess,
    required TResult Function(_ErrorWithWidget value) errorWithWidget,
  }) {
    return errorWithWidget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult? Function(LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ErrorWithWidget value)? errorWithWidget,
  }) {
    return errorWithWidget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(InitialWithCarNumber value)? initialWithCarNumber,
    TResult Function(LogoutSuccess value)? logoutSuccess,
    TResult Function(_ErrorWithWidget value)? errorWithWidget,
    required TResult orElse(),
  }) {
    if (errorWithWidget != null) {
      return errorWithWidget(this);
    }
    return orElse();
  }
}

abstract class _ErrorWithWidget implements ScanState {
  const factory _ErrorWithWidget(
      {required final String ttnNumber,
      required final bool isTimeOutError}) = _$ErrorWithWidgetImpl;

  String get ttnNumber;
  bool get isTimeOutError;

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorWithWidgetImplCopyWith<_$ErrorWithWidgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
