// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_task_silo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailTaskSiloModel _$DetailTaskSiloModelFromJson(Map<String, dynamic> json) {
  return _DetailTaskSiloModel.fromJson(json);
}

/// @nodoc
mixin _$DetailTaskSiloModel {
  @JsonKey(name: 'farm_id')
  int get farmId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'storage_amount')
  double get storageAmount => throw _privateConstructorUsedError;
  String? get feed => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'silo_type')
  String? get siloType => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated')
  String get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'good_id')
  int get goodId => throw _privateConstructorUsedError;

  /// Serializes this DetailTaskSiloModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailTaskSiloModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailTaskSiloModelCopyWith<DetailTaskSiloModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTaskSiloModelCopyWith<$Res> {
  factory $DetailTaskSiloModelCopyWith(
          DetailTaskSiloModel value, $Res Function(DetailTaskSiloModel) then) =
      _$DetailTaskSiloModelCopyWithImpl<$Res, DetailTaskSiloModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'farm_id') int farmId,
      String code,
      String name,
      @JsonKey(name: 'storage_amount') double storageAmount,
      String? feed,
      int id,
      @JsonKey(name: 'silo_type') String? siloType,
      @JsonKey(name: 'last_updated') String lastUpdated,
      @JsonKey(name: 'good_id') int goodId});
}

/// @nodoc
class _$DetailTaskSiloModelCopyWithImpl<$Res, $Val extends DetailTaskSiloModel>
    implements $DetailTaskSiloModelCopyWith<$Res> {
  _$DetailTaskSiloModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailTaskSiloModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmId = null,
    Object? code = null,
    Object? name = null,
    Object? storageAmount = null,
    Object? feed = freezed,
    Object? id = null,
    Object? siloType = freezed,
    Object? lastUpdated = null,
    Object? goodId = null,
  }) {
    return _then(_value.copyWith(
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      storageAmount: null == storageAmount
          ? _value.storageAmount
          : storageAmount // ignore: cast_nullable_to_non_nullable
              as double,
      feed: freezed == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      siloType: freezed == siloType
          ? _value.siloType
          : siloType // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      goodId: null == goodId
          ? _value.goodId
          : goodId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailTaskSiloModelImplCopyWith<$Res>
    implements $DetailTaskSiloModelCopyWith<$Res> {
  factory _$$DetailTaskSiloModelImplCopyWith(_$DetailTaskSiloModelImpl value,
          $Res Function(_$DetailTaskSiloModelImpl) then) =
      __$$DetailTaskSiloModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'farm_id') int farmId,
      String code,
      String name,
      @JsonKey(name: 'storage_amount') double storageAmount,
      String? feed,
      int id,
      @JsonKey(name: 'silo_type') String? siloType,
      @JsonKey(name: 'last_updated') String lastUpdated,
      @JsonKey(name: 'good_id') int goodId});
}

/// @nodoc
class __$$DetailTaskSiloModelImplCopyWithImpl<$Res>
    extends _$DetailTaskSiloModelCopyWithImpl<$Res, _$DetailTaskSiloModelImpl>
    implements _$$DetailTaskSiloModelImplCopyWith<$Res> {
  __$$DetailTaskSiloModelImplCopyWithImpl(_$DetailTaskSiloModelImpl _value,
      $Res Function(_$DetailTaskSiloModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTaskSiloModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmId = null,
    Object? code = null,
    Object? name = null,
    Object? storageAmount = null,
    Object? feed = freezed,
    Object? id = null,
    Object? siloType = freezed,
    Object? lastUpdated = null,
    Object? goodId = null,
  }) {
    return _then(_$DetailTaskSiloModelImpl(
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      storageAmount: null == storageAmount
          ? _value.storageAmount
          : storageAmount // ignore: cast_nullable_to_non_nullable
              as double,
      feed: freezed == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      siloType: freezed == siloType
          ? _value.siloType
          : siloType // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      goodId: null == goodId
          ? _value.goodId
          : goodId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailTaskSiloModelImpl implements _DetailTaskSiloModel {
  const _$DetailTaskSiloModelImpl(
      {@JsonKey(name: 'farm_id') required this.farmId,
      required this.code,
      required this.name,
      @JsonKey(name: 'storage_amount') required this.storageAmount,
      this.feed,
      required this.id,
      @JsonKey(name: 'silo_type') this.siloType,
      @JsonKey(name: 'last_updated') required this.lastUpdated,
      @JsonKey(name: 'good_id') required this.goodId});

  factory _$DetailTaskSiloModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailTaskSiloModelImplFromJson(json);

  @override
  @JsonKey(name: 'farm_id')
  final int farmId;
  @override
  final String code;
  @override
  final String name;
  @override
  @JsonKey(name: 'storage_amount')
  final double storageAmount;
  @override
  final String? feed;
  @override
  final int id;
  @override
  @JsonKey(name: 'silo_type')
  final String? siloType;
  @override
  @JsonKey(name: 'last_updated')
  final String lastUpdated;
  @override
  @JsonKey(name: 'good_id')
  final int goodId;

  @override
  String toString() {
    return 'DetailTaskSiloModel(farmId: $farmId, code: $code, name: $name, storageAmount: $storageAmount, feed: $feed, id: $id, siloType: $siloType, lastUpdated: $lastUpdated, goodId: $goodId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTaskSiloModelImpl &&
            (identical(other.farmId, farmId) || other.farmId == farmId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.storageAmount, storageAmount) ||
                other.storageAmount == storageAmount) &&
            (identical(other.feed, feed) || other.feed == feed) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.siloType, siloType) ||
                other.siloType == siloType) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.goodId, goodId) || other.goodId == goodId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, farmId, code, name,
      storageAmount, feed, id, siloType, lastUpdated, goodId);

  /// Create a copy of DetailTaskSiloModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTaskSiloModelImplCopyWith<_$DetailTaskSiloModelImpl> get copyWith =>
      __$$DetailTaskSiloModelImplCopyWithImpl<_$DetailTaskSiloModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailTaskSiloModelImplToJson(
      this,
    );
  }
}

abstract class _DetailTaskSiloModel implements DetailTaskSiloModel {
  const factory _DetailTaskSiloModel(
          {@JsonKey(name: 'farm_id') required final int farmId,
          required final String code,
          required final String name,
          @JsonKey(name: 'storage_amount') required final double storageAmount,
          final String? feed,
          required final int id,
          @JsonKey(name: 'silo_type') final String? siloType,
          @JsonKey(name: 'last_updated') required final String lastUpdated,
          @JsonKey(name: 'good_id') required final int goodId}) =
      _$DetailTaskSiloModelImpl;

  factory _DetailTaskSiloModel.fromJson(Map<String, dynamic> json) =
      _$DetailTaskSiloModelImpl.fromJson;

  @override
  @JsonKey(name: 'farm_id')
  int get farmId;
  @override
  String get code;
  @override
  String get name;
  @override
  @JsonKey(name: 'storage_amount')
  double get storageAmount;
  @override
  String? get feed;
  @override
  int get id;
  @override
  @JsonKey(name: 'silo_type')
  String? get siloType;
  @override
  @JsonKey(name: 'last_updated')
  String get lastUpdated;
  @override
  @JsonKey(name: 'good_id')
  int get goodId;

  /// Create a copy of DetailTaskSiloModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailTaskSiloModelImplCopyWith<_$DetailTaskSiloModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
