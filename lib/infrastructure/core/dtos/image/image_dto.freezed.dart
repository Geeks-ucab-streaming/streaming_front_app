// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageDto _$ImageDtoFromJson(Map<String, dynamic> json) {
  return _ImageDto.fromJson(json);
}

/// @nodoc
mixin _$ImageDto {
//required String id,
  List<dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDtoCopyWith<ImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDtoCopyWith<$Res> {
  factory $ImageDtoCopyWith(ImageDto value, $Res Function(ImageDto) then) =
      _$ImageDtoCopyWithImpl<$Res, ImageDto>;
  @useResult
  $Res call({List<dynamic> data});
}

/// @nodoc
class _$ImageDtoCopyWithImpl<$Res, $Val extends ImageDto>
    implements $ImageDtoCopyWith<$Res> {
  _$ImageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDtoImplCopyWith<$Res>
    implements $ImageDtoCopyWith<$Res> {
  factory _$$ImageDtoImplCopyWith(
          _$ImageDtoImpl value, $Res Function(_$ImageDtoImpl) then) =
      __$$ImageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> data});
}

/// @nodoc
class __$$ImageDtoImplCopyWithImpl<$Res>
    extends _$ImageDtoCopyWithImpl<$Res, _$ImageDtoImpl>
    implements _$$ImageDtoImplCopyWith<$Res> {
  __$$ImageDtoImplCopyWithImpl(
      _$ImageDtoImpl _value, $Res Function(_$ImageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ImageDtoImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageDtoImpl extends _ImageDto {
  const _$ImageDtoImpl({required final List<dynamic> data})
      : _data = data,
        super._();

  factory _$ImageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDtoImplFromJson(json);

//required String id,
  final List<dynamic> _data;
//required String id,
  @override
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDtoImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDtoImplCopyWith<_$ImageDtoImpl> get copyWith =>
      __$$ImageDtoImplCopyWithImpl<_$ImageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDtoImplToJson(
      this,
    );
  }
}

abstract class _ImageDto extends ImageDto {
  const factory _ImageDto({required final List<dynamic> data}) = _$ImageDtoImpl;
  const _ImageDto._() : super._();

  factory _ImageDto.fromJson(Map<String, dynamic> json) =
      _$ImageDtoImpl.fromJson;

  @override //required String id,
  List<dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$ImageDtoImplCopyWith<_$ImageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
