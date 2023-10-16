// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  String get placeName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String placeName) getNearbyRestaurents,
    required TResult Function(String placeName) getNearbyHotels,
    required TResult Function(String placeName) getNearbyBestPlaces,
    required TResult Function(String placeName) getNearHospitals,
    required TResult Function(String placeName) getNearPoliceStations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String placeName)? getNearbyRestaurents,
    TResult? Function(String placeName)? getNearbyHotels,
    TResult? Function(String placeName)? getNearbyBestPlaces,
    TResult? Function(String placeName)? getNearHospitals,
    TResult? Function(String placeName)? getNearPoliceStations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String placeName)? getNearbyRestaurents,
    TResult Function(String placeName)? getNearbyHotels,
    TResult Function(String placeName)? getNearbyBestPlaces,
    TResult Function(String placeName)? getNearHospitals,
    TResult Function(String placeName)? getNearPoliceStations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNearbyRestaurents value) getNearbyRestaurents,
    required TResult Function(GetNearbyHotels value) getNearbyHotels,
    required TResult Function(GetNearbyBestPlaces value) getNearbyBestPlaces,
    required TResult Function(GetNearHospitals value) getNearHospitals,
    required TResult Function(getNearPoliceStations value)
        getNearPoliceStations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNearbyRestaurents value)? getNearbyRestaurents,
    TResult? Function(GetNearbyHotels value)? getNearbyHotels,
    TResult? Function(GetNearbyBestPlaces value)? getNearbyBestPlaces,
    TResult? Function(GetNearHospitals value)? getNearHospitals,
    TResult? Function(getNearPoliceStations value)? getNearPoliceStations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNearbyRestaurents value)? getNearbyRestaurents,
    TResult Function(GetNearbyHotels value)? getNearbyHotels,
    TResult Function(GetNearbyBestPlaces value)? getNearbyBestPlaces,
    TResult Function(GetNearHospitals value)? getNearHospitals,
    TResult Function(getNearPoliceStations value)? getNearPoliceStations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
  @useResult
  $Res call({String placeName});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = null,
  }) {
    return _then(_value.copyWith(
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNearbyRestaurentsCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$GetNearbyRestaurentsCopyWith(_$GetNearbyRestaurents value,
          $Res Function(_$GetNearbyRestaurents) then) =
      __$$GetNearbyRestaurentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String placeName});
}

/// @nodoc
class __$$GetNearbyRestaurentsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetNearbyRestaurents>
    implements _$$GetNearbyRestaurentsCopyWith<$Res> {
  __$$GetNearbyRestaurentsCopyWithImpl(_$GetNearbyRestaurents _value,
      $Res Function(_$GetNearbyRestaurents) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = null,
  }) {
    return _then(_$GetNearbyRestaurents(
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNearbyRestaurents implements GetNearbyRestaurents {
  const _$GetNearbyRestaurents({required this.placeName});

  @override
  final String placeName;

  @override
  String toString() {
    return 'HomeEvent.getNearbyRestaurents(placeName: $placeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNearbyRestaurents &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNearbyRestaurentsCopyWith<_$GetNearbyRestaurents> get copyWith =>
      __$$GetNearbyRestaurentsCopyWithImpl<_$GetNearbyRestaurents>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String placeName) getNearbyRestaurents,
    required TResult Function(String placeName) getNearbyHotels,
    required TResult Function(String placeName) getNearbyBestPlaces,
    required TResult Function(String placeName) getNearHospitals,
    required TResult Function(String placeName) getNearPoliceStations,
  }) {
    return getNearbyRestaurents(placeName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String placeName)? getNearbyRestaurents,
    TResult? Function(String placeName)? getNearbyHotels,
    TResult? Function(String placeName)? getNearbyBestPlaces,
    TResult? Function(String placeName)? getNearHospitals,
    TResult? Function(String placeName)? getNearPoliceStations,
  }) {
    return getNearbyRestaurents?.call(placeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String placeName)? getNearbyRestaurents,
    TResult Function(String placeName)? getNearbyHotels,
    TResult Function(String placeName)? getNearbyBestPlaces,
    TResult Function(String placeName)? getNearHospitals,
    TResult Function(String placeName)? getNearPoliceStations,
    required TResult orElse(),
  }) {
    if (getNearbyRestaurents != null) {
      return getNearbyRestaurents(placeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNearbyRestaurents value) getNearbyRestaurents,
    required TResult Function(GetNearbyHotels value) getNearbyHotels,
    required TResult Function(GetNearbyBestPlaces value) getNearbyBestPlaces,
    required TResult Function(GetNearHospitals value) getNearHospitals,
    required TResult Function(getNearPoliceStations value)
        getNearPoliceStations,
  }) {
    return getNearbyRestaurents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNearbyRestaurents value)? getNearbyRestaurents,
    TResult? Function(GetNearbyHotels value)? getNearbyHotels,
    TResult? Function(GetNearbyBestPlaces value)? getNearbyBestPlaces,
    TResult? Function(GetNearHospitals value)? getNearHospitals,
    TResult? Function(getNearPoliceStations value)? getNearPoliceStations,
  }) {
    return getNearbyRestaurents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNearbyRestaurents value)? getNearbyRestaurents,
    TResult Function(GetNearbyHotels value)? getNearbyHotels,
    TResult Function(GetNearbyBestPlaces value)? getNearbyBestPlaces,
    TResult Function(GetNearHospitals value)? getNearHospitals,
    TResult Function(getNearPoliceStations value)? getNearPoliceStations,
    required TResult orElse(),
  }) {
    if (getNearbyRestaurents != null) {
      return getNearbyRestaurents(this);
    }
    return orElse();
  }
}

abstract class GetNearbyRestaurents implements HomeEvent {
  const factory GetNearbyRestaurents({required final String placeName}) =
      _$GetNearbyRestaurents;

  @override
  String get placeName;
  @override
  @JsonKey(ignore: true)
  _$$GetNearbyRestaurentsCopyWith<_$GetNearbyRestaurents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNearbyHotelsCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$GetNearbyHotelsCopyWith(
          _$GetNearbyHotels value, $Res Function(_$GetNearbyHotels) then) =
      __$$GetNearbyHotelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String placeName});
}

/// @nodoc
class __$$GetNearbyHotelsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetNearbyHotels>
    implements _$$GetNearbyHotelsCopyWith<$Res> {
  __$$GetNearbyHotelsCopyWithImpl(
      _$GetNearbyHotels _value, $Res Function(_$GetNearbyHotels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = null,
  }) {
    return _then(_$GetNearbyHotels(
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNearbyHotels implements GetNearbyHotels {
  const _$GetNearbyHotels({required this.placeName});

  @override
  final String placeName;

  @override
  String toString() {
    return 'HomeEvent.getNearbyHotels(placeName: $placeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNearbyHotels &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNearbyHotelsCopyWith<_$GetNearbyHotels> get copyWith =>
      __$$GetNearbyHotelsCopyWithImpl<_$GetNearbyHotels>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String placeName) getNearbyRestaurents,
    required TResult Function(String placeName) getNearbyHotels,
    required TResult Function(String placeName) getNearbyBestPlaces,
    required TResult Function(String placeName) getNearHospitals,
    required TResult Function(String placeName) getNearPoliceStations,
  }) {
    return getNearbyHotels(placeName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String placeName)? getNearbyRestaurents,
    TResult? Function(String placeName)? getNearbyHotels,
    TResult? Function(String placeName)? getNearbyBestPlaces,
    TResult? Function(String placeName)? getNearHospitals,
    TResult? Function(String placeName)? getNearPoliceStations,
  }) {
    return getNearbyHotels?.call(placeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String placeName)? getNearbyRestaurents,
    TResult Function(String placeName)? getNearbyHotels,
    TResult Function(String placeName)? getNearbyBestPlaces,
    TResult Function(String placeName)? getNearHospitals,
    TResult Function(String placeName)? getNearPoliceStations,
    required TResult orElse(),
  }) {
    if (getNearbyHotels != null) {
      return getNearbyHotels(placeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNearbyRestaurents value) getNearbyRestaurents,
    required TResult Function(GetNearbyHotels value) getNearbyHotels,
    required TResult Function(GetNearbyBestPlaces value) getNearbyBestPlaces,
    required TResult Function(GetNearHospitals value) getNearHospitals,
    required TResult Function(getNearPoliceStations value)
        getNearPoliceStations,
  }) {
    return getNearbyHotels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNearbyRestaurents value)? getNearbyRestaurents,
    TResult? Function(GetNearbyHotels value)? getNearbyHotels,
    TResult? Function(GetNearbyBestPlaces value)? getNearbyBestPlaces,
    TResult? Function(GetNearHospitals value)? getNearHospitals,
    TResult? Function(getNearPoliceStations value)? getNearPoliceStations,
  }) {
    return getNearbyHotels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNearbyRestaurents value)? getNearbyRestaurents,
    TResult Function(GetNearbyHotels value)? getNearbyHotels,
    TResult Function(GetNearbyBestPlaces value)? getNearbyBestPlaces,
    TResult Function(GetNearHospitals value)? getNearHospitals,
    TResult Function(getNearPoliceStations value)? getNearPoliceStations,
    required TResult orElse(),
  }) {
    if (getNearbyHotels != null) {
      return getNearbyHotels(this);
    }
    return orElse();
  }
}

abstract class GetNearbyHotels implements HomeEvent {
  const factory GetNearbyHotels({required final String placeName}) =
      _$GetNearbyHotels;

  @override
  String get placeName;
  @override
  @JsonKey(ignore: true)
  _$$GetNearbyHotelsCopyWith<_$GetNearbyHotels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNearbyBestPlacesCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$GetNearbyBestPlacesCopyWith(_$GetNearbyBestPlaces value,
          $Res Function(_$GetNearbyBestPlaces) then) =
      __$$GetNearbyBestPlacesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String placeName});
}

/// @nodoc
class __$$GetNearbyBestPlacesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetNearbyBestPlaces>
    implements _$$GetNearbyBestPlacesCopyWith<$Res> {
  __$$GetNearbyBestPlacesCopyWithImpl(
      _$GetNearbyBestPlaces _value, $Res Function(_$GetNearbyBestPlaces) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = null,
  }) {
    return _then(_$GetNearbyBestPlaces(
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNearbyBestPlaces implements GetNearbyBestPlaces {
  const _$GetNearbyBestPlaces({required this.placeName});

  @override
  final String placeName;

  @override
  String toString() {
    return 'HomeEvent.getNearbyBestPlaces(placeName: $placeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNearbyBestPlaces &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNearbyBestPlacesCopyWith<_$GetNearbyBestPlaces> get copyWith =>
      __$$GetNearbyBestPlacesCopyWithImpl<_$GetNearbyBestPlaces>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String placeName) getNearbyRestaurents,
    required TResult Function(String placeName) getNearbyHotels,
    required TResult Function(String placeName) getNearbyBestPlaces,
    required TResult Function(String placeName) getNearHospitals,
    required TResult Function(String placeName) getNearPoliceStations,
  }) {
    return getNearbyBestPlaces(placeName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String placeName)? getNearbyRestaurents,
    TResult? Function(String placeName)? getNearbyHotels,
    TResult? Function(String placeName)? getNearbyBestPlaces,
    TResult? Function(String placeName)? getNearHospitals,
    TResult? Function(String placeName)? getNearPoliceStations,
  }) {
    return getNearbyBestPlaces?.call(placeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String placeName)? getNearbyRestaurents,
    TResult Function(String placeName)? getNearbyHotels,
    TResult Function(String placeName)? getNearbyBestPlaces,
    TResult Function(String placeName)? getNearHospitals,
    TResult Function(String placeName)? getNearPoliceStations,
    required TResult orElse(),
  }) {
    if (getNearbyBestPlaces != null) {
      return getNearbyBestPlaces(placeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNearbyRestaurents value) getNearbyRestaurents,
    required TResult Function(GetNearbyHotels value) getNearbyHotels,
    required TResult Function(GetNearbyBestPlaces value) getNearbyBestPlaces,
    required TResult Function(GetNearHospitals value) getNearHospitals,
    required TResult Function(getNearPoliceStations value)
        getNearPoliceStations,
  }) {
    return getNearbyBestPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNearbyRestaurents value)? getNearbyRestaurents,
    TResult? Function(GetNearbyHotels value)? getNearbyHotels,
    TResult? Function(GetNearbyBestPlaces value)? getNearbyBestPlaces,
    TResult? Function(GetNearHospitals value)? getNearHospitals,
    TResult? Function(getNearPoliceStations value)? getNearPoliceStations,
  }) {
    return getNearbyBestPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNearbyRestaurents value)? getNearbyRestaurents,
    TResult Function(GetNearbyHotels value)? getNearbyHotels,
    TResult Function(GetNearbyBestPlaces value)? getNearbyBestPlaces,
    TResult Function(GetNearHospitals value)? getNearHospitals,
    TResult Function(getNearPoliceStations value)? getNearPoliceStations,
    required TResult orElse(),
  }) {
    if (getNearbyBestPlaces != null) {
      return getNearbyBestPlaces(this);
    }
    return orElse();
  }
}

abstract class GetNearbyBestPlaces implements HomeEvent {
  const factory GetNearbyBestPlaces({required final String placeName}) =
      _$GetNearbyBestPlaces;

  @override
  String get placeName;
  @override
  @JsonKey(ignore: true)
  _$$GetNearbyBestPlacesCopyWith<_$GetNearbyBestPlaces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNearHospitalsCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$GetNearHospitalsCopyWith(
          _$GetNearHospitals value, $Res Function(_$GetNearHospitals) then) =
      __$$GetNearHospitalsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String placeName});
}

/// @nodoc
class __$$GetNearHospitalsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetNearHospitals>
    implements _$$GetNearHospitalsCopyWith<$Res> {
  __$$GetNearHospitalsCopyWithImpl(
      _$GetNearHospitals _value, $Res Function(_$GetNearHospitals) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = null,
  }) {
    return _then(_$GetNearHospitals(
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNearHospitals implements GetNearHospitals {
  const _$GetNearHospitals({required this.placeName});

  @override
  final String placeName;

  @override
  String toString() {
    return 'HomeEvent.getNearHospitals(placeName: $placeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNearHospitals &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNearHospitalsCopyWith<_$GetNearHospitals> get copyWith =>
      __$$GetNearHospitalsCopyWithImpl<_$GetNearHospitals>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String placeName) getNearbyRestaurents,
    required TResult Function(String placeName) getNearbyHotels,
    required TResult Function(String placeName) getNearbyBestPlaces,
    required TResult Function(String placeName) getNearHospitals,
    required TResult Function(String placeName) getNearPoliceStations,
  }) {
    return getNearHospitals(placeName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String placeName)? getNearbyRestaurents,
    TResult? Function(String placeName)? getNearbyHotels,
    TResult? Function(String placeName)? getNearbyBestPlaces,
    TResult? Function(String placeName)? getNearHospitals,
    TResult? Function(String placeName)? getNearPoliceStations,
  }) {
    return getNearHospitals?.call(placeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String placeName)? getNearbyRestaurents,
    TResult Function(String placeName)? getNearbyHotels,
    TResult Function(String placeName)? getNearbyBestPlaces,
    TResult Function(String placeName)? getNearHospitals,
    TResult Function(String placeName)? getNearPoliceStations,
    required TResult orElse(),
  }) {
    if (getNearHospitals != null) {
      return getNearHospitals(placeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNearbyRestaurents value) getNearbyRestaurents,
    required TResult Function(GetNearbyHotels value) getNearbyHotels,
    required TResult Function(GetNearbyBestPlaces value) getNearbyBestPlaces,
    required TResult Function(GetNearHospitals value) getNearHospitals,
    required TResult Function(getNearPoliceStations value)
        getNearPoliceStations,
  }) {
    return getNearHospitals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNearbyRestaurents value)? getNearbyRestaurents,
    TResult? Function(GetNearbyHotels value)? getNearbyHotels,
    TResult? Function(GetNearbyBestPlaces value)? getNearbyBestPlaces,
    TResult? Function(GetNearHospitals value)? getNearHospitals,
    TResult? Function(getNearPoliceStations value)? getNearPoliceStations,
  }) {
    return getNearHospitals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNearbyRestaurents value)? getNearbyRestaurents,
    TResult Function(GetNearbyHotels value)? getNearbyHotels,
    TResult Function(GetNearbyBestPlaces value)? getNearbyBestPlaces,
    TResult Function(GetNearHospitals value)? getNearHospitals,
    TResult Function(getNearPoliceStations value)? getNearPoliceStations,
    required TResult orElse(),
  }) {
    if (getNearHospitals != null) {
      return getNearHospitals(this);
    }
    return orElse();
  }
}

abstract class GetNearHospitals implements HomeEvent {
  const factory GetNearHospitals({required final String placeName}) =
      _$GetNearHospitals;

  @override
  String get placeName;
  @override
  @JsonKey(ignore: true)
  _$$GetNearHospitalsCopyWith<_$GetNearHospitals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getNearPoliceStationsCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$getNearPoliceStationsCopyWith(_$getNearPoliceStations value,
          $Res Function(_$getNearPoliceStations) then) =
      __$$getNearPoliceStationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String placeName});
}

/// @nodoc
class __$$getNearPoliceStationsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$getNearPoliceStations>
    implements _$$getNearPoliceStationsCopyWith<$Res> {
  __$$getNearPoliceStationsCopyWithImpl(_$getNearPoliceStations _value,
      $Res Function(_$getNearPoliceStations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = null,
  }) {
    return _then(_$getNearPoliceStations(
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getNearPoliceStations implements getNearPoliceStations {
  const _$getNearPoliceStations({required this.placeName});

  @override
  final String placeName;

  @override
  String toString() {
    return 'HomeEvent.getNearPoliceStations(placeName: $placeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getNearPoliceStations &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getNearPoliceStationsCopyWith<_$getNearPoliceStations> get copyWith =>
      __$$getNearPoliceStationsCopyWithImpl<_$getNearPoliceStations>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String placeName) getNearbyRestaurents,
    required TResult Function(String placeName) getNearbyHotels,
    required TResult Function(String placeName) getNearbyBestPlaces,
    required TResult Function(String placeName) getNearHospitals,
    required TResult Function(String placeName) getNearPoliceStations,
  }) {
    return getNearPoliceStations(placeName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String placeName)? getNearbyRestaurents,
    TResult? Function(String placeName)? getNearbyHotels,
    TResult? Function(String placeName)? getNearbyBestPlaces,
    TResult? Function(String placeName)? getNearHospitals,
    TResult? Function(String placeName)? getNearPoliceStations,
  }) {
    return getNearPoliceStations?.call(placeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String placeName)? getNearbyRestaurents,
    TResult Function(String placeName)? getNearbyHotels,
    TResult Function(String placeName)? getNearbyBestPlaces,
    TResult Function(String placeName)? getNearHospitals,
    TResult Function(String placeName)? getNearPoliceStations,
    required TResult orElse(),
  }) {
    if (getNearPoliceStations != null) {
      return getNearPoliceStations(placeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNearbyRestaurents value) getNearbyRestaurents,
    required TResult Function(GetNearbyHotels value) getNearbyHotels,
    required TResult Function(GetNearbyBestPlaces value) getNearbyBestPlaces,
    required TResult Function(GetNearHospitals value) getNearHospitals,
    required TResult Function(getNearPoliceStations value)
        getNearPoliceStations,
  }) {
    return getNearPoliceStations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNearbyRestaurents value)? getNearbyRestaurents,
    TResult? Function(GetNearbyHotels value)? getNearbyHotels,
    TResult? Function(GetNearbyBestPlaces value)? getNearbyBestPlaces,
    TResult? Function(GetNearHospitals value)? getNearHospitals,
    TResult? Function(getNearPoliceStations value)? getNearPoliceStations,
  }) {
    return getNearPoliceStations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNearbyRestaurents value)? getNearbyRestaurents,
    TResult Function(GetNearbyHotels value)? getNearbyHotels,
    TResult Function(GetNearbyBestPlaces value)? getNearbyBestPlaces,
    TResult Function(GetNearHospitals value)? getNearHospitals,
    TResult Function(getNearPoliceStations value)? getNearPoliceStations,
    required TResult orElse(),
  }) {
    if (getNearPoliceStations != null) {
      return getNearPoliceStations(this);
    }
    return orElse();
  }
}

abstract class getNearPoliceStations implements HomeEvent {
  const factory getNearPoliceStations({required final String placeName}) =
      _$getNearPoliceStations;

  @override
  String get placeName;
  @override
  @JsonKey(ignore: true)
  _$$getNearPoliceStationsCopyWith<_$getNearPoliceStations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<NearByResult> get restaurentList => throw _privateConstructorUsedError;
  List<NearByResult> get hotelList => throw _privateConstructorUsedError;
  List<NearByResult> get bestPlaceList => throw _privateConstructorUsedError;
  List<NearByResult> get hospitalList => throw _privateConstructorUsedError;
  List<NearByResult> get policeStationList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<NearByResult> restaurentList,
      List<NearByResult> hotelList,
      List<NearByResult> bestPlaceList,
      List<NearByResult> hospitalList,
      List<NearByResult> policeStationList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? restaurentList = null,
    Object? hotelList = null,
    Object? bestPlaceList = null,
    Object? hospitalList = null,
    Object? policeStationList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      restaurentList: null == restaurentList
          ? _value.restaurentList
          : restaurentList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
      hotelList: null == hotelList
          ? _value.hotelList
          : hotelList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
      bestPlaceList: null == bestPlaceList
          ? _value.bestPlaceList
          : bestPlaceList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
      hospitalList: null == hospitalList
          ? _value.hospitalList
          : hospitalList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
      policeStationList: null == policeStationList
          ? _value.policeStationList
          : policeStationList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<NearByResult> restaurentList,
      List<NearByResult> hotelList,
      List<NearByResult> bestPlaceList,
      List<NearByResult> hospitalList,
      List<NearByResult> policeStationList});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? restaurentList = null,
    Object? hotelList = null,
    Object? bestPlaceList = null,
    Object? hospitalList = null,
    Object? policeStationList = null,
  }) {
    return _then(_$_HomeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      restaurentList: null == restaurentList
          ? _value._restaurentList
          : restaurentList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
      hotelList: null == hotelList
          ? _value._hotelList
          : hotelList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
      bestPlaceList: null == bestPlaceList
          ? _value._bestPlaceList
          : bestPlaceList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
      hospitalList: null == hospitalList
          ? _value._hospitalList
          : hospitalList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
      policeStationList: null == policeStationList
          ? _value._policeStationList
          : policeStationList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.isLoading,
      required this.isError,
      required final List<NearByResult> restaurentList,
      required final List<NearByResult> hotelList,
      required final List<NearByResult> bestPlaceList,
      required final List<NearByResult> hospitalList,
      required final List<NearByResult> policeStationList})
      : _restaurentList = restaurentList,
        _hotelList = hotelList,
        _bestPlaceList = bestPlaceList,
        _hospitalList = hospitalList,
        _policeStationList = policeStationList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<NearByResult> _restaurentList;
  @override
  List<NearByResult> get restaurentList {
    if (_restaurentList is EqualUnmodifiableListView) return _restaurentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurentList);
  }

  final List<NearByResult> _hotelList;
  @override
  List<NearByResult> get hotelList {
    if (_hotelList is EqualUnmodifiableListView) return _hotelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotelList);
  }

  final List<NearByResult> _bestPlaceList;
  @override
  List<NearByResult> get bestPlaceList {
    if (_bestPlaceList is EqualUnmodifiableListView) return _bestPlaceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestPlaceList);
  }

  final List<NearByResult> _hospitalList;
  @override
  List<NearByResult> get hospitalList {
    if (_hospitalList is EqualUnmodifiableListView) return _hospitalList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hospitalList);
  }

  final List<NearByResult> _policeStationList;
  @override
  List<NearByResult> get policeStationList {
    if (_policeStationList is EqualUnmodifiableListView)
      return _policeStationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_policeStationList);
  }

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, isError: $isError, restaurentList: $restaurentList, hotelList: $hotelList, bestPlaceList: $bestPlaceList, hospitalList: $hospitalList, policeStationList: $policeStationList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._restaurentList, _restaurentList) &&
            const DeepCollectionEquality()
                .equals(other._hotelList, _hotelList) &&
            const DeepCollectionEquality()
                .equals(other._bestPlaceList, _bestPlaceList) &&
            const DeepCollectionEquality()
                .equals(other._hospitalList, _hospitalList) &&
            const DeepCollectionEquality()
                .equals(other._policeStationList, _policeStationList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_restaurentList),
      const DeepCollectionEquality().hash(_hotelList),
      const DeepCollectionEquality().hash(_bestPlaceList),
      const DeepCollectionEquality().hash(_hospitalList),
      const DeepCollectionEquality().hash(_policeStationList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool isLoading,
      required final bool isError,
      required final List<NearByResult> restaurentList,
      required final List<NearByResult> hotelList,
      required final List<NearByResult> bestPlaceList,
      required final List<NearByResult> hospitalList,
      required final List<NearByResult> policeStationList}) = _$_HomeState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<NearByResult> get restaurentList;
  @override
  List<NearByResult> get hotelList;
  @override
  List<NearByResult> get bestPlaceList;
  @override
  List<NearByResult> get hospitalList;
  @override
  List<NearByResult> get policeStationList;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
