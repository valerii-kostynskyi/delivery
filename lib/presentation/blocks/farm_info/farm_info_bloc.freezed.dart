// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farm_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FarmInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFarmInfo,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFarmInfo,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFarmInfo,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFarmInfo value) loadFarmInfo,
    required TResult Function(Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFarmInfo value)? loadFarmInfo,
    TResult? Function(Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFarmInfo value)? loadFarmInfo,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmInfoEventCopyWith<$Res> {
  factory $FarmInfoEventCopyWith(
          FarmInfoEvent value, $Res Function(FarmInfoEvent) then) =
      _$FarmInfoEventCopyWithImpl<$Res, FarmInfoEvent>;
}

/// @nodoc
class _$FarmInfoEventCopyWithImpl<$Res, $Val extends FarmInfoEvent>
    implements $FarmInfoEventCopyWith<$Res> {
  _$FarmInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FarmInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadFarmInfoImplCopyWith<$Res> {
  factory _$$LoadFarmInfoImplCopyWith(
          _$LoadFarmInfoImpl value, $Res Function(_$LoadFarmInfoImpl) then) =
      __$$LoadFarmInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFarmInfoImplCopyWithImpl<$Res>
    extends _$FarmInfoEventCopyWithImpl<$Res, _$LoadFarmInfoImpl>
    implements _$$LoadFarmInfoImplCopyWith<$Res> {
  __$$LoadFarmInfoImplCopyWithImpl(
      _$LoadFarmInfoImpl _value, $Res Function(_$LoadFarmInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FarmInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadFarmInfoImpl implements LoadFarmInfo {
  const _$LoadFarmInfoImpl();

  @override
  String toString() {
    return 'FarmInfoEvent.loadFarmInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFarmInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFarmInfo,
    required TResult Function() logout,
  }) {
    return loadFarmInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFarmInfo,
    TResult? Function()? logout,
  }) {
    return loadFarmInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFarmInfo,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loadFarmInfo != null) {
      return loadFarmInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFarmInfo value) loadFarmInfo,
    required TResult Function(Logout value) logout,
  }) {
    return loadFarmInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFarmInfo value)? loadFarmInfo,
    TResult? Function(Logout value)? logout,
  }) {
    return loadFarmInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFarmInfo value)? loadFarmInfo,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (loadFarmInfo != null) {
      return loadFarmInfo(this);
    }
    return orElse();
  }
}

abstract class LoadFarmInfo implements FarmInfoEvent {
  const factory LoadFarmInfo() = _$LoadFarmInfoImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$FarmInfoEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of FarmInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'FarmInfoEvent.logout()';
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
    required TResult Function() loadFarmInfo,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFarmInfo,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFarmInfo,
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
    required TResult Function(LoadFarmInfo value) loadFarmInfo,
    required TResult Function(Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFarmInfo value)? loadFarmInfo,
    TResult? Function(Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFarmInfo value)? loadFarmInfo,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements FarmInfoEvent {
  const factory Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$FarmInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            GeneralInfoInnerModel generalInfo, String carNumber)
        success,
    required TResult Function(String errorMessage, String carNumber) error,
    required TResult Function() logoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GeneralInfoInnerModel generalInfo, String carNumber)?
        success,
    TResult? Function(String errorMessage, String carNumber)? error,
    TResult? Function()? logoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GeneralInfoInnerModel generalInfo, String carNumber)?
        success,
    TResult Function(String errorMessage, String carNumber)? error,
    TResult Function()? logoutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FarmInfoInitial value) initial,
    required TResult Function(FarmInfoLoading value) loading,
    required TResult Function(FarmInfoSuccess value) success,
    required TResult Function(FarmInfoError value) error,
    required TResult Function(LogoutSuccess value) logoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FarmInfoInitial value)? initial,
    TResult? Function(FarmInfoLoading value)? loading,
    TResult? Function(FarmInfoSuccess value)? success,
    TResult? Function(FarmInfoError value)? error,
    TResult? Function(LogoutSuccess value)? logoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FarmInfoInitial value)? initial,
    TResult Function(FarmInfoLoading value)? loading,
    TResult Function(FarmInfoSuccess value)? success,
    TResult Function(FarmInfoError value)? error,
    TResult Function(LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmInfoStateCopyWith<$Res> {
  factory $FarmInfoStateCopyWith(
          FarmInfoState value, $Res Function(FarmInfoState) then) =
      _$FarmInfoStateCopyWithImpl<$Res, FarmInfoState>;
}

/// @nodoc
class _$FarmInfoStateCopyWithImpl<$Res, $Val extends FarmInfoState>
    implements $FarmInfoStateCopyWith<$Res> {
  _$FarmInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FarmInfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FarmInfoInitialImplCopyWith<$Res> {
  factory _$$FarmInfoInitialImplCopyWith(_$FarmInfoInitialImpl value,
          $Res Function(_$FarmInfoInitialImpl) then) =
      __$$FarmInfoInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FarmInfoInitialImplCopyWithImpl<$Res>
    extends _$FarmInfoStateCopyWithImpl<$Res, _$FarmInfoInitialImpl>
    implements _$$FarmInfoInitialImplCopyWith<$Res> {
  __$$FarmInfoInitialImplCopyWithImpl(
      _$FarmInfoInitialImpl _value, $Res Function(_$FarmInfoInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FarmInfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FarmInfoInitialImpl implements FarmInfoInitial {
  const _$FarmInfoInitialImpl();

  @override
  String toString() {
    return 'FarmInfoState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FarmInfoInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            GeneralInfoInnerModel generalInfo, String carNumber)
        success,
    required TResult Function(String errorMessage, String carNumber) error,
    required TResult Function() logoutSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GeneralInfoInnerModel generalInfo, String carNumber)?
        success,
    TResult? Function(String errorMessage, String carNumber)? error,
    TResult? Function()? logoutSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GeneralInfoInnerModel generalInfo, String carNumber)?
        success,
    TResult Function(String errorMessage, String carNumber)? error,
    TResult Function()? logoutSuccess,
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
    required TResult Function(FarmInfoInitial value) initial,
    required TResult Function(FarmInfoLoading value) loading,
    required TResult Function(FarmInfoSuccess value) success,
    required TResult Function(FarmInfoError value) error,
    required TResult Function(LogoutSuccess value) logoutSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FarmInfoInitial value)? initial,
    TResult? Function(FarmInfoLoading value)? loading,
    TResult? Function(FarmInfoSuccess value)? success,
    TResult? Function(FarmInfoError value)? error,
    TResult? Function(LogoutSuccess value)? logoutSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FarmInfoInitial value)? initial,
    TResult Function(FarmInfoLoading value)? loading,
    TResult Function(FarmInfoSuccess value)? success,
    TResult Function(FarmInfoError value)? error,
    TResult Function(LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FarmInfoInitial implements FarmInfoState {
  const factory FarmInfoInitial() = _$FarmInfoInitialImpl;
}

/// @nodoc
abstract class _$$FarmInfoLoadingImplCopyWith<$Res> {
  factory _$$FarmInfoLoadingImplCopyWith(_$FarmInfoLoadingImpl value,
          $Res Function(_$FarmInfoLoadingImpl) then) =
      __$$FarmInfoLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FarmInfoLoadingImplCopyWithImpl<$Res>
    extends _$FarmInfoStateCopyWithImpl<$Res, _$FarmInfoLoadingImpl>
    implements _$$FarmInfoLoadingImplCopyWith<$Res> {
  __$$FarmInfoLoadingImplCopyWithImpl(
      _$FarmInfoLoadingImpl _value, $Res Function(_$FarmInfoLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FarmInfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FarmInfoLoadingImpl implements FarmInfoLoading {
  const _$FarmInfoLoadingImpl();

  @override
  String toString() {
    return 'FarmInfoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FarmInfoLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            GeneralInfoInnerModel generalInfo, String carNumber)
        success,
    required TResult Function(String errorMessage, String carNumber) error,
    required TResult Function() logoutSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GeneralInfoInnerModel generalInfo, String carNumber)?
        success,
    TResult? Function(String errorMessage, String carNumber)? error,
    TResult? Function()? logoutSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GeneralInfoInnerModel generalInfo, String carNumber)?
        success,
    TResult Function(String errorMessage, String carNumber)? error,
    TResult Function()? logoutSuccess,
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
    required TResult Function(FarmInfoInitial value) initial,
    required TResult Function(FarmInfoLoading value) loading,
    required TResult Function(FarmInfoSuccess value) success,
    required TResult Function(FarmInfoError value) error,
    required TResult Function(LogoutSuccess value) logoutSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FarmInfoInitial value)? initial,
    TResult? Function(FarmInfoLoading value)? loading,
    TResult? Function(FarmInfoSuccess value)? success,
    TResult? Function(FarmInfoError value)? error,
    TResult? Function(LogoutSuccess value)? logoutSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FarmInfoInitial value)? initial,
    TResult Function(FarmInfoLoading value)? loading,
    TResult Function(FarmInfoSuccess value)? success,
    TResult Function(FarmInfoError value)? error,
    TResult Function(LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FarmInfoLoading implements FarmInfoState {
  const factory FarmInfoLoading() = _$FarmInfoLoadingImpl;
}

/// @nodoc
abstract class _$$FarmInfoSuccessImplCopyWith<$Res> {
  factory _$$FarmInfoSuccessImplCopyWith(_$FarmInfoSuccessImpl value,
          $Res Function(_$FarmInfoSuccessImpl) then) =
      __$$FarmInfoSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GeneralInfoInnerModel generalInfo, String carNumber});

  $GeneralInfoInnerModelCopyWith<$Res> get generalInfo;
}

/// @nodoc
class __$$FarmInfoSuccessImplCopyWithImpl<$Res>
    extends _$FarmInfoStateCopyWithImpl<$Res, _$FarmInfoSuccessImpl>
    implements _$$FarmInfoSuccessImplCopyWith<$Res> {
  __$$FarmInfoSuccessImplCopyWithImpl(
      _$FarmInfoSuccessImpl _value, $Res Function(_$FarmInfoSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FarmInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generalInfo = null,
    Object? carNumber = null,
  }) {
    return _then(_$FarmInfoSuccessImpl(
      generalInfo: null == generalInfo
          ? _value.generalInfo
          : generalInfo // ignore: cast_nullable_to_non_nullable
              as GeneralInfoInnerModel,
      carNumber: null == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of FarmInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeneralInfoInnerModelCopyWith<$Res> get generalInfo {
    return $GeneralInfoInnerModelCopyWith<$Res>(_value.generalInfo, (value) {
      return _then(_value.copyWith(generalInfo: value));
    });
  }
}

/// @nodoc

class _$FarmInfoSuccessImpl implements FarmInfoSuccess {
  const _$FarmInfoSuccessImpl(
      {required this.generalInfo, required this.carNumber});

  @override
  final GeneralInfoInnerModel generalInfo;
  @override
  final String carNumber;

  @override
  String toString() {
    return 'FarmInfoState.success(generalInfo: $generalInfo, carNumber: $carNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmInfoSuccessImpl &&
            (identical(other.generalInfo, generalInfo) ||
                other.generalInfo == generalInfo) &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generalInfo, carNumber);

  /// Create a copy of FarmInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmInfoSuccessImplCopyWith<_$FarmInfoSuccessImpl> get copyWith =>
      __$$FarmInfoSuccessImplCopyWithImpl<_$FarmInfoSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            GeneralInfoInnerModel generalInfo, String carNumber)
        success,
    required TResult Function(String errorMessage, String carNumber) error,
    required TResult Function() logoutSuccess,
  }) {
    return success(generalInfo, carNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GeneralInfoInnerModel generalInfo, String carNumber)?
        success,
    TResult? Function(String errorMessage, String carNumber)? error,
    TResult? Function()? logoutSuccess,
  }) {
    return success?.call(generalInfo, carNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GeneralInfoInnerModel generalInfo, String carNumber)?
        success,
    TResult Function(String errorMessage, String carNumber)? error,
    TResult Function()? logoutSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(generalInfo, carNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FarmInfoInitial value) initial,
    required TResult Function(FarmInfoLoading value) loading,
    required TResult Function(FarmInfoSuccess value) success,
    required TResult Function(FarmInfoError value) error,
    required TResult Function(LogoutSuccess value) logoutSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FarmInfoInitial value)? initial,
    TResult? Function(FarmInfoLoading value)? loading,
    TResult? Function(FarmInfoSuccess value)? success,
    TResult? Function(FarmInfoError value)? error,
    TResult? Function(LogoutSuccess value)? logoutSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FarmInfoInitial value)? initial,
    TResult Function(FarmInfoLoading value)? loading,
    TResult Function(FarmInfoSuccess value)? success,
    TResult Function(FarmInfoError value)? error,
    TResult Function(LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FarmInfoSuccess implements FarmInfoState {
  const factory FarmInfoSuccess(
      {required final GeneralInfoInnerModel generalInfo,
      required final String carNumber}) = _$FarmInfoSuccessImpl;

  GeneralInfoInnerModel get generalInfo;
  String get carNumber;

  /// Create a copy of FarmInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FarmInfoSuccessImplCopyWith<_$FarmInfoSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FarmInfoErrorImplCopyWith<$Res> {
  factory _$$FarmInfoErrorImplCopyWith(
          _$FarmInfoErrorImpl value, $Res Function(_$FarmInfoErrorImpl) then) =
      __$$FarmInfoErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage, String carNumber});
}

/// @nodoc
class __$$FarmInfoErrorImplCopyWithImpl<$Res>
    extends _$FarmInfoStateCopyWithImpl<$Res, _$FarmInfoErrorImpl>
    implements _$$FarmInfoErrorImplCopyWith<$Res> {
  __$$FarmInfoErrorImplCopyWithImpl(
      _$FarmInfoErrorImpl _value, $Res Function(_$FarmInfoErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FarmInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? carNumber = null,
  }) {
    return _then(_$FarmInfoErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      carNumber: null == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FarmInfoErrorImpl implements FarmInfoError {
  const _$FarmInfoErrorImpl(
      {required this.errorMessage, required this.carNumber});

  @override
  final String errorMessage;
  @override
  final String carNumber;

  @override
  String toString() {
    return 'FarmInfoState.error(errorMessage: $errorMessage, carNumber: $carNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmInfoErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, carNumber);

  /// Create a copy of FarmInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmInfoErrorImplCopyWith<_$FarmInfoErrorImpl> get copyWith =>
      __$$FarmInfoErrorImplCopyWithImpl<_$FarmInfoErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            GeneralInfoInnerModel generalInfo, String carNumber)
        success,
    required TResult Function(String errorMessage, String carNumber) error,
    required TResult Function() logoutSuccess,
  }) {
    return error(errorMessage, carNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GeneralInfoInnerModel generalInfo, String carNumber)?
        success,
    TResult? Function(String errorMessage, String carNumber)? error,
    TResult? Function()? logoutSuccess,
  }) {
    return error?.call(errorMessage, carNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GeneralInfoInnerModel generalInfo, String carNumber)?
        success,
    TResult Function(String errorMessage, String carNumber)? error,
    TResult Function()? logoutSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage, carNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FarmInfoInitial value) initial,
    required TResult Function(FarmInfoLoading value) loading,
    required TResult Function(FarmInfoSuccess value) success,
    required TResult Function(FarmInfoError value) error,
    required TResult Function(LogoutSuccess value) logoutSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FarmInfoInitial value)? initial,
    TResult? Function(FarmInfoLoading value)? loading,
    TResult? Function(FarmInfoSuccess value)? success,
    TResult? Function(FarmInfoError value)? error,
    TResult? Function(LogoutSuccess value)? logoutSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FarmInfoInitial value)? initial,
    TResult Function(FarmInfoLoading value)? loading,
    TResult Function(FarmInfoSuccess value)? success,
    TResult Function(FarmInfoError value)? error,
    TResult Function(LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FarmInfoError implements FarmInfoState {
  const factory FarmInfoError(
      {required final String errorMessage,
      required final String carNumber}) = _$FarmInfoErrorImpl;

  String get errorMessage;
  String get carNumber;

  /// Create a copy of FarmInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FarmInfoErrorImplCopyWith<_$FarmInfoErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutSuccessImplCopyWith<$Res> {
  factory _$$LogoutSuccessImplCopyWith(
          _$LogoutSuccessImpl value, $Res Function(_$LogoutSuccessImpl) then) =
      __$$LogoutSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutSuccessImplCopyWithImpl<$Res>
    extends _$FarmInfoStateCopyWithImpl<$Res, _$LogoutSuccessImpl>
    implements _$$LogoutSuccessImplCopyWith<$Res> {
  __$$LogoutSuccessImplCopyWithImpl(
      _$LogoutSuccessImpl _value, $Res Function(_$LogoutSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FarmInfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutSuccessImpl implements LogoutSuccess {
  const _$LogoutSuccessImpl();

  @override
  String toString() {
    return 'FarmInfoState.logoutSuccess()';
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
    required TResult Function(
            GeneralInfoInnerModel generalInfo, String carNumber)
        success,
    required TResult Function(String errorMessage, String carNumber) error,
    required TResult Function() logoutSuccess,
  }) {
    return logoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GeneralInfoInnerModel generalInfo, String carNumber)?
        success,
    TResult? Function(String errorMessage, String carNumber)? error,
    TResult? Function()? logoutSuccess,
  }) {
    return logoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GeneralInfoInnerModel generalInfo, String carNumber)?
        success,
    TResult Function(String errorMessage, String carNumber)? error,
    TResult Function()? logoutSuccess,
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
    required TResult Function(FarmInfoInitial value) initial,
    required TResult Function(FarmInfoLoading value) loading,
    required TResult Function(FarmInfoSuccess value) success,
    required TResult Function(FarmInfoError value) error,
    required TResult Function(LogoutSuccess value) logoutSuccess,
  }) {
    return logoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FarmInfoInitial value)? initial,
    TResult? Function(FarmInfoLoading value)? loading,
    TResult? Function(FarmInfoSuccess value)? success,
    TResult? Function(FarmInfoError value)? error,
    TResult? Function(LogoutSuccess value)? logoutSuccess,
  }) {
    return logoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FarmInfoInitial value)? initial,
    TResult Function(FarmInfoLoading value)? loading,
    TResult Function(FarmInfoSuccess value)? success,
    TResult Function(FarmInfoError value)? error,
    TResult Function(LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess(this);
    }
    return orElse();
  }
}

abstract class LogoutSuccess implements FarmInfoState {
  const factory LogoutSuccess() = _$LogoutSuccessImpl;
}
