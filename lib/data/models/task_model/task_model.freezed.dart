// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  String get feed => throw _privateConstructorUsedError;
  @JsonKey(name: 'house_name')
  String get houseName => throw _privateConstructorUsedError;
  @JsonKey(name: 'house_id')
  int get houseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  int get taskId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'sequence_number')
  int get sequenceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_locked')
  bool get isLocked => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_done')
  bool get isDone => throw _privateConstructorUsedError;

  /// Serializes this TaskModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call(
      {String feed,
      @JsonKey(name: 'house_name') String houseName,
      @JsonKey(name: 'house_id') int houseId,
      @JsonKey(name: 'task_id') int taskId,
      double amount,
      @JsonKey(name: 'sequence_number') int sequenceNumber,
      @JsonKey(name: 'is_locked') bool isLocked,
      @JsonKey(name: 'is_done') bool isDone});
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feed = null,
    Object? houseName = null,
    Object? houseId = null,
    Object? taskId = null,
    Object? amount = null,
    Object? sequenceNumber = null,
    Object? isLocked = null,
    Object? isDone = null,
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
      sequenceNumber: null == sequenceNumber
          ? _value.sequenceNumber
          : sequenceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskModelImplCopyWith<$Res>
    implements $TaskModelCopyWith<$Res> {
  factory _$$TaskModelImplCopyWith(
          _$TaskModelImpl value, $Res Function(_$TaskModelImpl) then) =
      __$$TaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String feed,
      @JsonKey(name: 'house_name') String houseName,
      @JsonKey(name: 'house_id') int houseId,
      @JsonKey(name: 'task_id') int taskId,
      double amount,
      @JsonKey(name: 'sequence_number') int sequenceNumber,
      @JsonKey(name: 'is_locked') bool isLocked,
      @JsonKey(name: 'is_done') bool isDone});
}

/// @nodoc
class __$$TaskModelImplCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$TaskModelImpl>
    implements _$$TaskModelImplCopyWith<$Res> {
  __$$TaskModelImplCopyWithImpl(
      _$TaskModelImpl _value, $Res Function(_$TaskModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feed = null,
    Object? houseName = null,
    Object? houseId = null,
    Object? taskId = null,
    Object? amount = null,
    Object? sequenceNumber = null,
    Object? isLocked = null,
    Object? isDone = null,
  }) {
    return _then(_$TaskModelImpl(
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
      sequenceNumber: null == sequenceNumber
          ? _value.sequenceNumber
          : sequenceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskModelImpl implements _TaskModel {
  const _$TaskModelImpl(
      {required this.feed,
      @JsonKey(name: 'house_name') required this.houseName,
      @JsonKey(name: 'house_id') required this.houseId,
      @JsonKey(name: 'task_id') required this.taskId,
      required this.amount,
      @JsonKey(name: 'sequence_number') required this.sequenceNumber,
      @JsonKey(name: 'is_locked') required this.isLocked,
      @JsonKey(name: 'is_done') required this.isDone});

  factory _$TaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskModelImplFromJson(json);

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
  @override
  @JsonKey(name: 'sequence_number')
  final int sequenceNumber;
  @override
  @JsonKey(name: 'is_locked')
  final bool isLocked;
  @override
  @JsonKey(name: 'is_done')
  final bool isDone;

  @override
  String toString() {
    return 'TaskModel(feed: $feed, houseName: $houseName, houseId: $houseId, taskId: $taskId, amount: $amount, sequenceNumber: $sequenceNumber, isLocked: $isLocked, isDone: $isDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskModelImpl &&
            (identical(other.feed, feed) || other.feed == feed) &&
            (identical(other.houseName, houseName) ||
                other.houseName == houseName) &&
            (identical(other.houseId, houseId) || other.houseId == houseId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.sequenceNumber, sequenceNumber) ||
                other.sequenceNumber == sequenceNumber) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, feed, houseName, houseId, taskId,
      amount, sequenceNumber, isLocked, isDone);

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      __$$TaskModelImplCopyWithImpl<_$TaskModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskModelImplToJson(
      this,
    );
  }
}

abstract class _TaskModel implements TaskModel {
  const factory _TaskModel(
      {required final String feed,
      @JsonKey(name: 'house_name') required final String houseName,
      @JsonKey(name: 'house_id') required final int houseId,
      @JsonKey(name: 'task_id') required final int taskId,
      required final double amount,
      @JsonKey(name: 'sequence_number') required final int sequenceNumber,
      @JsonKey(name: 'is_locked') required final bool isLocked,
      @JsonKey(name: 'is_done') required final bool isDone}) = _$TaskModelImpl;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$TaskModelImpl.fromJson;

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
  @JsonKey(name: 'sequence_number')
  int get sequenceNumber;
  @override
  @JsonKey(name: 'is_locked')
  bool get isLocked;
  @override
  @JsonKey(name: 'is_done')
  bool get isDone;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
