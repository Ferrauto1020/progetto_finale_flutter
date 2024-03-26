// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotelDetail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotelDetail _$HotelDetailFromJson(Map<String, dynamic> json) {
  return _HotelDetail.fromJson(json);
}

/// @nodoc
mixin _$HotelDetail {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'rooms')
  List<Room> get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelDetailCopyWith<HotelDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelDetailCopyWith<$Res> {
  factory $HotelDetailCopyWith(
          HotelDetail value, $Res Function(HotelDetail) then) =
      _$HotelDetailCopyWithImpl<$Res, HotelDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'rooms') List<Room> rooms});
}

/// @nodoc
class _$HotelDetailCopyWithImpl<$Res, $Val extends HotelDetail>
    implements $HotelDetailCopyWith<$Res> {
  _$HotelDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelDetailImplCopyWith<$Res>
    implements $HotelDetailCopyWith<$Res> {
  factory _$$HotelDetailImplCopyWith(
          _$HotelDetailImpl value, $Res Function(_$HotelDetailImpl) then) =
      __$$HotelDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'rooms') List<Room> rooms});
}

/// @nodoc
class __$$HotelDetailImplCopyWithImpl<$Res>
    extends _$HotelDetailCopyWithImpl<$Res, _$HotelDetailImpl>
    implements _$$HotelDetailImplCopyWith<$Res> {
  __$$HotelDetailImplCopyWithImpl(
      _$HotelDetailImpl _value, $Res Function(_$HotelDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? rooms = null,
  }) {
    return _then(_$HotelDetailImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelDetailImpl implements _HotelDetail {
  const _$HotelDetailImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'rooms') required final List<Room> rooms})
      : _rooms = rooms;

  factory _$HotelDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelDetailImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'address')
  final String address;
  final List<Room> _rooms;
  @override
  @JsonKey(name: 'rooms')
  List<Room> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'HotelDetail(name: $name, address: $address, rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelDetailImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, address, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelDetailImplCopyWith<_$HotelDetailImpl> get copyWith =>
      __$$HotelDetailImplCopyWithImpl<_$HotelDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelDetailImplToJson(
      this,
    );
  }
}

abstract class _HotelDetail implements HotelDetail {
  const factory _HotelDetail(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'address') required final String address,
          @JsonKey(name: 'rooms') required final List<Room> rooms}) =
      _$HotelDetailImpl;

  factory _HotelDetail.fromJson(Map<String, dynamic> json) =
      _$HotelDetailImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'rooms')
  List<Room> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$HotelDetailImplCopyWith<_$HotelDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
