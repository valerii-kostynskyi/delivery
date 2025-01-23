// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneralTaskModel _$GeneralTaskModelFromJson(Map<String, dynamic> json) {
  return _GeneralTaskModel.fromJson(json);
}

/// @nodoc
mixin _$GeneralTaskModel {
  @JsonKey(name: 'truck_number')
  int get truckNumber => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_done')
  int get isDone => throw _privateConstructorUsedError;

  /// Serializes this GeneralTaskModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeneralTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeneralTaskModelCopyWith<GeneralTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralTaskModelCopyWith<$Res> {
  factory $GeneralTaskModelCopyWith(
          GeneralTaskModel value, $Res Function(GeneralTaskModel) then) =
      _$GeneralTaskModelCopyWithImpl<$Res, GeneralTaskModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'truck_number') int truckNumber,
      int total,
      @JsonKey(name: 'is_done') int isDone});
}

/// @nodoc
class _$GeneralTaskModelCopyWithImpl<$Res, $Val extends GeneralTaskModel>
    implements $GeneralTaskModelCopyWith<$Res> {
  _$GeneralTaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeneralTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? truckNumber = null,
    Object? total = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      truckNumber: null == truckNumber
          ? _value.truckNumber
          : truckNumber // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralTaskModelImplCopyWith<$Res>
    implements $GeneralTaskModelCopyWith<$Res> {
  factory _$$GeneralTaskModelImplCopyWith(_$GeneralTaskModelImpl value,
          $Res Function(_$GeneralTaskModelImpl) then) =
      __$$GeneralTaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'truck_number') int truckNumber,
      int total,
      @JsonKey(name: 'is_done') int isDone});
}

/// @nodoc
class __$$GeneralTaskModelImplCopyWithImpl<$Res>
    extends _$GeneralTaskModelCopyWithImpl<$Res, _$GeneralTaskModelImpl>
    implements _$$GeneralTaskModelImplCopyWith<$Res> {
  __$$GeneralTaskModelImplCopyWithImpl(_$GeneralTaskModelImpl _value,
      $Res Function(_$GeneralTaskModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeneralTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? truckNumber = null,
    Object? total = null,
    Object? isDone = null,
  }) {
    return _then(_$GeneralTaskModelImpl(
      truckNumber: null == truckNumber
          ? _value.truckNumber
          : truckNumber // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralTaskModelImpl implements _GeneralTaskModel {
  const _$GeneralTaskModelImpl(
      {@JsonKey(name: 'truck_number') required this.truckNumber,
      required this.total,
      @JsonKey(name: 'is_done') required this.isDone});

  factory _$GeneralTaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralTaskModelImplFromJson(json);

  @override
  @JsonKey(name: 'truck_number')
  final int truckNumber;
  @override
  final int total;
  @override
  @JsonKey(name: 'is_done')
  final int isDone;

  @override
  String toString() {
    return 'GeneralTaskModel(truckNumber: $truckNumber, total: $total, isDone: $isDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralTaskModelImpl &&
            (identical(other.truckNumber, truckNumber) ||
                other.truckNumber == truckNumber) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, truckNumber, total, isDone);

  /// Create a copy of GeneralTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralTaskModelImplCopyWith<_$GeneralTaskModelImpl> get copyWith =>
      __$$GeneralTaskModelImplCopyWithImpl<_$GeneralTaskModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralTaskModelImplToJson(
      this,
    );
  }
}

abstract class _GeneralTaskModel implements GeneralTaskModel {
  const factory _GeneralTaskModel(
          {@JsonKey(name: 'truck_number') required final int truckNumber,
          required final int total,
          @JsonKey(name: 'is_done') required final int isDone}) =
      _$GeneralTaskModelImpl;

  factory _GeneralTaskModel.fromJson(Map<String, dynamic> json) =
      _$GeneralTaskModelImpl.fromJson;

  @override
  @JsonKey(name: 'truck_number')
  int get truckNumber;
  @override
  int get total;
  @override
  @JsonKey(name: 'is_done')
  int get isDone;

  /// Create a copy of GeneralTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeneralTaskModelImplCopyWith<_$GeneralTaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
