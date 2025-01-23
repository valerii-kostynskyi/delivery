// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailTaskModel _$DetailTaskModelFromJson(Map<String, dynamic> json) {
  return _DetailTaskModel.fromJson(json);
}

/// @nodoc
mixin _$DetailTaskModel {
  String get feed => throw _privateConstructorUsedError;
  @JsonKey(name: 'house_name')
  String get houseName => throw _privateConstructorUsedError;
  @JsonKey(name: 'house_id')
  int get houseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  int get taskId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  List<DetailTaskSiloModel> get silos => throw _privateConstructorUsedError;

  /// Serializes this DetailTaskModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailTaskModelCopyWith<DetailTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTaskModelCopyWith<$Res> {
  factory $DetailTaskModelCopyWith(
          DetailTaskModel value, $Res Function(DetailTaskModel) then) =
      _$DetailTaskModelCopyWithImpl<$Res, DetailTaskModel>;
  @useResult
  $Res call(
      {String feed,
      @JsonKey(name: 'house_name') String houseName,
      @JsonKey(name: 'house_id') int houseId,
      @JsonKey(name: 'task_id') int taskId,
      double amount,
      List<DetailTaskSiloModel> silos});
}

/// @nodoc
class _$DetailTaskModelCopyWithImpl<$Res, $Val extends DetailTaskModel>
    implements $DetailTaskModelCopyWith<$Res> {
  _$DetailTaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feed = null,
    Object? houseName = null,
    Object? houseId = null,
    Object? taskId = null,
    Object? amount = null,
    Object? silos = null,
  }) {
    return _then(_value.copyWith(
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String,
      houseName: null == houseName
          ? _value.houseName
          : houseName // ignore: cast_nullable_to_non_nullable
              as String,
      houseId: null == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      silos: null == silos
          ? _value.silos
          : silos // ignore: cast_nullable_to_non_nullable
              as List<DetailTaskSiloModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailTaskModelImplCopyWith<$Res>
    implements $DetailTaskModelCopyWith<$Res> {
  factory _$$DetailTaskModelImplCopyWith(_$DetailTaskModelImpl value,
          $Res Function(_$DetailTaskModelImpl) then) =
      __$$DetailTaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String feed,
      @JsonKey(name: 'house_name') String houseName,
      @JsonKey(name: 'house_id') int houseId,
      @JsonKey(name: 'task_id') int taskId,
      double amount,
      List<DetailTaskSiloModel> silos});
}

/// @nodoc
class __$$DetailTaskModelImplCopyWithImpl<$Res>
    extends _$DetailTaskModelCopyWithImpl<$Res, _$DetailTaskModelImpl>
    implements _$$DetailTaskModelImplCopyWith<$Res> {
  __$$DetailTaskModelImplCopyWithImpl(
      _$DetailTaskModelImpl _value, $Res Function(_$DetailTaskModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feed = null,
    Object? houseName = null,
    Object? houseId = null,
    Object? taskId = null,
    Object? amount = null,
    Object? silos = null,
  }) {
    return _then(_$DetailTaskModelImpl(
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String,
      houseName: null == houseName
          ? _value.houseName
          : houseName // ignore: cast_nullable_to_non_nullable
              as String,
      houseId: null == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      silos: null == silos
          ? _value._silos
          : silos // ignore: cast_nullable_to_non_nullable
              as List<DetailTaskSiloModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailTaskModelImpl implements _DetailTaskModel {
  const _$DetailTaskModelImpl(
      {required this.feed,
      @JsonKey(name: 'house_name') required this.houseName,
      @JsonKey(name: 'house_id') required this.houseId,
      @JsonKey(name: 'task_id') required this.taskId,
      required this.amount,
      required final List<DetailTaskSiloModel> silos})
      : _silos = silos;

  factory _$DetailTaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailTaskModelImplFromJson(json);

  @override
  final String feed;
  @override
  @JsonKey(name: 'house_name')
  final String houseName;
  @override
  @JsonKey(name: 'house_id')
  final int houseId;
  @override
  @JsonKey(name: 'task_id')
  final int taskId;
  @override
  final double amount;
  final List<DetailTaskSiloModel> _silos;
  @override
  List<DetailTaskSiloModel> get silos {
    if (_silos is EqualUnmodifiableListView) return _silos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_silos);
  }

  @override
  String toString() {
    return 'DetailTaskModel(feed: $feed, houseName: $houseName, houseId: $houseId, taskId: $taskId, amount: $amount, silos: $silos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTaskModelImpl &&
            (identical(other.feed, feed) || other.feed == feed) &&
            (identical(other.houseName, houseName) ||
                other.houseName == houseName) &&
            (identical(other.houseId, houseId) || other.houseId == houseId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality().equals(other._silos, _silos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, feed, houseName, houseId, taskId,
      amount, const DeepCollectionEquality().hash(_silos));

  /// Create a copy of DetailTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTaskModelImplCopyWith<_$DetailTaskModelImpl> get copyWith =>
      __$$DetailTaskModelImplCopyWithImpl<_$DetailTaskModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailTaskModelImplToJson(
      this,
    );
  }
}

abstract class _DetailTaskModel implements DetailTaskModel {
  const factory _DetailTaskModel(
      {required final String feed,
      @JsonKey(name: 'house_name') required final String houseName,
      @JsonKey(name: 'house_id') required final int houseId,
      @JsonKey(name: 'task_id') required final int taskId,
      required final double amount,
      required final List<DetailTaskSiloModel> silos}) = _$DetailTaskModelImpl;

  factory _DetailTaskModel.fromJson(Map<String, dynamic> json) =
      _$DetailTaskModelImpl.fromJson;

  @override
  String get feed;
  @override
  @JsonKey(name: 'house_name')
  String get houseName;
  @override
  @JsonKey(name: 'house_id')
  int get houseId;
  @override
  @JsonKey(name: 'task_id')
  int get taskId;
  @override
  double get amount;
  @override
  List<DetailTaskSiloModel> get silos;

  /// Create a copy of DetailTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailTaskModelImplCopyWith<_$DetailTaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
