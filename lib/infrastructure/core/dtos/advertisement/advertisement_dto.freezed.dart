// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advertisement_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdvertisementDto _$AdvertisementDtoFromJson(Map<String, dynamic> json) {
  return _AdvertisementDto.fromJson(json);
}

/// @nodoc
mixin _$AdvertisementDto {
  String get id => throw _privateConstructorUsedError;
  List<dynamic> get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvertisementDtoCopyWith<AdvertisementDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementDtoCopyWith<$Res> {
  factory $AdvertisementDtoCopyWith(
          AdvertisementDto value, $Res Function(AdvertisementDto) then) =
      _$AdvertisementDtoCopyWithImpl<$Res, AdvertisementDto>;
  @useResult
  $Res call({String id, List<dynamic> image});
}

/// @nodoc
class _$AdvertisementDtoCopyWithImpl<$Res, $Val extends AdvertisementDto>
    implements $AdvertisementDtoCopyWith<$Res> {
  _$AdvertisementDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvertisementDtoImplCopyWith<$Res>
    implements $AdvertisementDtoCopyWith<$Res> {
  factory _$$AdvertisementDtoImplCopyWith(_$AdvertisementDtoImpl value,
          $Res Function(_$AdvertisementDtoImpl) then) =
      __$$AdvertisementDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<dynamic> image});
}

/// @nodoc
class __$$AdvertisementDtoImplCopyWithImpl<$Res>
    extends _$AdvertisementDtoCopyWithImpl<$Res, _$AdvertisementDtoImpl>
    implements _$$AdvertisementDtoImplCopyWith<$Res> {
  __$$AdvertisementDtoImplCopyWithImpl(_$AdvertisementDtoImpl _value,
      $Res Function(_$AdvertisementDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$AdvertisementDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisementDtoImpl
    with DiagnosticableTreeMixin
    implements _AdvertisementDto {
  const _$AdvertisementDtoImpl(
      {required this.id, required final List<dynamic> image})
      : _image = image;

  factory _$AdvertisementDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisementDtoImplFromJson(json);

  @override
  final String id;
  final List<dynamic> _image;
  @override
  List<dynamic> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdvertisementDto(id: $id, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdvertisementDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementDtoImplCopyWith<_$AdvertisementDtoImpl> get copyWith =>
      __$$AdvertisementDtoImplCopyWithImpl<_$AdvertisementDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisementDtoImplToJson(
      this,
    );
  }
}

abstract class _AdvertisementDto implements AdvertisementDto {
  const factory _AdvertisementDto(
      {required final String id,
      required final List<dynamic> image}) = _$AdvertisementDtoImpl;

  factory _AdvertisementDto.fromJson(Map<String, dynamic> json) =
      _$AdvertisementDtoImpl.fromJson;

  @override
  String get id;
  @override
  List<dynamic> get image;
  @override
  @JsonKey(ignore: true)
  _$$AdvertisementDtoImplCopyWith<_$AdvertisementDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
