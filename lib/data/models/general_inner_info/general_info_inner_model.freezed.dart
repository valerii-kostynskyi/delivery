// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_info_inner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneralInfoInnerModel _$GeneralInfoInnerModelFromJson(
    Map<String, dynamic> json) {
  return _GeneralInfoInnerModel.fromJson(json);
}

/// @nodoc
mixin _$GeneralInfoInnerModel {
  @JsonKey(name: 'tasks')
  List<GeneralTaskModel> get taskList => throw _privateConstructorUsedError;
  @JsonKey(name: 'stats')
  List<StatModel> get statList => throw _privateConstructorUsedError;
  AmountModel get amounts => throw _privateConstructorUsedError;
  String get farm => throw _privateConstructorUsedError;

  /// Serializes this GeneralInfoInnerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeneralInfoInnerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeneralInfoInnerModelCopyWith<GeneralInfoInnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralInfoInnerModelCopyWith<$Res> {
  factory $GeneralInfoInnerModelCopyWith(GeneralInfoInnerModel value,
          $Res Function(GeneralInfoInnerModel) then) =
      _$GeneralInfoInnerModelCopyWithImpl<$Res, GeneralInfoInnerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tasks') List<GeneralTaskModel> taskList,
      @JsonKey(name: 'stats') List<StatModel> statList,
      AmountModel amounts,
      String farm});

  $AmountModelCopyWith<$Res> get amounts;
}

/// @nodoc
class _$GeneralInfoInnerModelCopyWithImpl<$Res,
        $Val extends GeneralInfoInnerModel>
    implements $GeneralInfoInnerModelCopyWith<$Res> {
  _$GeneralInfoInnerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeneralInfoInnerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskList = null,
    Object? statList = null,
    Object? amounts = null,
    Object? farm = null,
  }) {
    return _then(_value.copyWith(
      taskList: null == taskList
          ? _value.taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<GeneralTaskModel>,
      statList: null == statList
          ? _value.statList
          : statList // ignore: cast_nullable_to_non_nullable
              as List<StatModel>,
      amounts: null == amounts
          ? _value.amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as AmountModel,
      farm: null == farm
          ? _value.farm
          : farm // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of GeneralInfoInnerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AmountModelCopyWith<$Res> get amounts {
    return $AmountModelCopyWith<$Res>(_value.amounts, (value) {
      return _then(_value.copyWith(amounts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GeneralInfoInnerModelImplCopyWith<$Res>
    implements $GeneralInfoInnerModelCopyWith<$Res> {
  factory _$$GeneralInfoInnerModelImplCopyWith(
          _$GeneralInfoInnerModelImpl value,
          $Res Function(_$GeneralInfoInnerModelImpl) then) =
      __$$GeneralInfoInnerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tasks') List<GeneralTaskModel> taskList,
      @JsonKey(name: 'stats') List<StatModel> statList,
      AmountModel amounts,
      String farm});

  @override
  $AmountModelCopyWith<$Res> get amounts;
}

/// @nodoc
class __$$GeneralInfoInnerModelImplCopyWithImpl<$Res>
    extends _$GeneralInfoInnerModelCopyWithImpl<$Res,
        _$GeneralInfoInnerModelImpl>
    implements _$$GeneralInfoInnerModelImplCopyWith<$Res> {
  __$$GeneralInfoInnerModelImplCopyWithImpl(_$GeneralInfoInnerModelImpl _value,
      $Res Function(_$GeneralInfoInnerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeneralInfoInnerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskList = null,
    Object? statList = null,
    Object? amounts = null,
    Object? farm = null,
  }) {
    return _then(_$GeneralInfoInnerModelImpl(
      taskList: null == taskList
          ? _value._taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<GeneralTaskModel>,
      statList: null == statList
          ? _value._statList
          : statList // ignore: cast_nullable_to_non_nullable
              as List<StatModel>,
      amounts: null == amounts
          ? _value.amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as AmountModel,
      farm: null == farm
          ? _value.farm
          : farm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralInfoInnerModelImpl implements _GeneralInfoInnerModel {
  const _$GeneralInfoInnerModelImpl(
      {@JsonKey(name: 'tasks') required final List<GeneralTaskModel> taskList,
      @JsonKey(name: 'stats') required final List<StatModel> statList,
      required this.amounts,
      required this.farm})
      : _taskList = taskList,
        _statList = statList;

  factory _$GeneralInfoInnerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralInfoInnerModelImplFromJson(json);

  final List<GeneralTaskModel> _taskList;
  @override
  @JsonKey(name: 'tasks')
  List<GeneralTaskModel> get taskList {
    if (_taskList is EqualUnmodifiableListView) return _taskList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskList);
  }

  final List<StatModel> _statList;
  @override
  @JsonKey(name: 'stats')
  List<StatModel> get statList {
    if (_statList is EqualUnmodifiableListView) return _statList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statList);
  }

  @override
  final AmountModel amounts;
  @override
  final String farm;

  @override
  String toString() {
    return 'GeneralInfoInnerModel(taskList: $taskList, statList: $statList, amounts: $amounts, farm: $farm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralInfoInnerModelImpl &&
            const DeepCollectionEquality().equals(other._taskList, _taskList) &&
            const DeepCollectionEquality().equals(other._statList, _statList) &&
            (identical(other.amounts, amounts) || other.amounts == amounts) &&
            (identical(other.farm, farm) || other.farm == farm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_taskList),
      const DeepCollectionEquality().hash(_statList),
      amounts,
      farm);

  /// Create a copy of GeneralInfoInnerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralInfoInnerModelImplCopyWith<_$GeneralInfoInnerModelImpl>
      get copyWith => __$$GeneralInfoInnerModelImplCopyWithImpl<
          _$GeneralInfoInnerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralInfoInnerModelImplToJson(
      this,
    );
  }
}

abstract class _GeneralInfoInnerModel implements GeneralInfoInnerModel {
  const factory _GeneralInfoInnerModel(
      {@JsonKey(name: 'tasks') required final List<GeneralTaskModel> taskList,
      @JsonKey(name: 'stats') required final List<StatModel> statList,
      required final AmountModel amounts,
      required final String farm}) = _$GeneralInfoInnerModelImpl;

  factory _GeneralInfoInnerModel.fromJson(Map<String, dynamic> json) =
      _$GeneralInfoInnerModelImpl.fromJson;

  @override
  @JsonKey(name: 'tasks')
  List<GeneralTaskModel> get taskList;
  @override
  @JsonKey(name: 'stats')
  List<StatModel> get statList;
  @override
  AmountModel get amounts;
  @override
  String get farm;

  /// Create a copy of GeneralInfoInnerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeneralInfoInnerModelImplCopyWith<_$GeneralInfoInnerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
