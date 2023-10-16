// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String placeName) getTouristPlaces,
    required TResult Function() getTop10Places,
    required TResult Function() getBeachesResult,
    required TResult Function() getViewPointsResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String placeName)? getTouristPlaces,
    TResult? Function()? getTop10Places,
    TResult? Function()? getBeachesResult,
    TResult? Function()? getViewPointsResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String placeName)? getTouristPlaces,
    TResult Function()? getTop10Places,
    TResult Function()? getBeachesResult,
    TResult Function()? getViewPointsResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTouristPlaces value) getTouristPlaces,
    required TResult Function(GetTop10Places value) getTop10Places,
    required TResult Function(GetBeachesResult value) getBeachesResult,
    required TResult Function(GetViewPointsResult value) getViewPointsResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTouristPlaces value)? getTouristPlaces,
    TResult? Function(GetTop10Places value)? getTop10Places,
    TResult? Function(GetBeachesResult value)? getBeachesResult,
    TResult? Function(GetViewPointsResult value)? getViewPointsResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTouristPlaces value)? getTouristPlaces,
    TResult Function(GetTop10Places value)? getTop10Places,
    TResult Function(GetBeachesResult value)? getBeachesResult,
    TResult Function(GetViewPointsResult value)? getViewPointsResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTouristPlacesCopyWith<$Res> {
  factory _$$GetTouristPlacesCopyWith(
          _$GetTouristPlaces value, $Res Function(_$GetTouristPlaces) then) =
      __$$GetTouristPlacesCopyWithImpl<$Res>;
  @useResult
  $Res call({String placeName});
}

/// @nodoc
class __$$GetTouristPlacesCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetTouristPlaces>
    implements _$$GetTouristPlacesCopyWith<$Res> {
  __$$GetTouristPlacesCopyWithImpl(
      _$GetTouristPlaces _value, $Res Function(_$GetTouristPlaces) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = null,
  }) {
    return _then(_$GetTouristPlaces(
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTouristPlaces implements GetTouristPlaces {
  const _$GetTouristPlaces({required this.placeName});

  @override
  final String placeName;

  @override
  String toString() {
    return 'SearchEvent.getTouristPlaces(placeName: $placeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTouristPlaces &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTouristPlacesCopyWith<_$GetTouristPlaces> get copyWith =>
      __$$GetTouristPlacesCopyWithImpl<_$GetTouristPlaces>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String placeName) getTouristPlaces,
    required TResult Function() getTop10Places,
    required TResult Function() getBeachesResult,
    required TResult Function() getViewPointsResult,
  }) {
    return getTouristPlaces(placeName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String placeName)? getTouristPlaces,
    TResult? Function()? getTop10Places,
    TResult? Function()? getBeachesResult,
    TResult? Function()? getViewPointsResult,
  }) {
    return getTouristPlaces?.call(placeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String placeName)? getTouristPlaces,
    TResult Function()? getTop10Places,
    TResult Function()? getBeachesResult,
    TResult Function()? getViewPointsResult,
    required TResult orElse(),
  }) {
    if (getTouristPlaces != null) {
      return getTouristPlaces(placeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTouristPlaces value) getTouristPlaces,
    required TResult Function(GetTop10Places value) getTop10Places,
    required TResult Function(GetBeachesResult value) getBeachesResult,
    required TResult Function(GetViewPointsResult value) getViewPointsResult,
  }) {
    return getTouristPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTouristPlaces value)? getTouristPlaces,
    TResult? Function(GetTop10Places value)? getTop10Places,
    TResult? Function(GetBeachesResult value)? getBeachesResult,
    TResult? Function(GetViewPointsResult value)? getViewPointsResult,
  }) {
    return getTouristPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTouristPlaces value)? getTouristPlaces,
    TResult Function(GetTop10Places value)? getTop10Places,
    TResult Function(GetBeachesResult value)? getBeachesResult,
    TResult Function(GetViewPointsResult value)? getViewPointsResult,
    required TResult orElse(),
  }) {
    if (getTouristPlaces != null) {
      return getTouristPlaces(this);
    }
    return orElse();
  }
}

abstract class GetTouristPlaces implements SearchEvent {
  const factory GetTouristPlaces({required final String placeName}) =
      _$GetTouristPlaces;

  String get placeName;
  @JsonKey(ignore: true)
  _$$GetTouristPlacesCopyWith<_$GetTouristPlaces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTop10PlacesCopyWith<$Res> {
  factory _$$GetTop10PlacesCopyWith(
          _$GetTop10Places value, $Res Function(_$GetTop10Places) then) =
      __$$GetTop10PlacesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTop10PlacesCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetTop10Places>
    implements _$$GetTop10PlacesCopyWith<$Res> {
  __$$GetTop10PlacesCopyWithImpl(
      _$GetTop10Places _value, $Res Function(_$GetTop10Places) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTop10Places implements GetTop10Places {
  const _$GetTop10Places();

  @override
  String toString() {
    return 'SearchEvent.getTop10Places()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTop10Places);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String placeName) getTouristPlaces,
    required TResult Function() getTop10Places,
    required TResult Function() getBeachesResult,
    required TResult Function() getViewPointsResult,
  }) {
    return getTop10Places();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String placeName)? getTouristPlaces,
    TResult? Function()? getTop10Places,
    TResult? Function()? getBeachesResult,
    TResult? Function()? getViewPointsResult,
  }) {
    return getTop10Places?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String placeName)? getTouristPlaces,
    TResult Function()? getTop10Places,
    TResult Function()? getBeachesResult,
    TResult Function()? getViewPointsResult,
    required TResult orElse(),
  }) {
    if (getTop10Places != null) {
      return getTop10Places();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTouristPlaces value) getTouristPlaces,
    required TResult Function(GetTop10Places value) getTop10Places,
    required TResult Function(GetBeachesResult value) getBeachesResult,
    required TResult Function(GetViewPointsResult value) getViewPointsResult,
  }) {
    return getTop10Places(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTouristPlaces value)? getTouristPlaces,
    TResult? Function(GetTop10Places value)? getTop10Places,
    TResult? Function(GetBeachesResult value)? getBeachesResult,
    TResult? Function(GetViewPointsResult value)? getViewPointsResult,
  }) {
    return getTop10Places?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTouristPlaces value)? getTouristPlaces,
    TResult Function(GetTop10Places value)? getTop10Places,
    TResult Function(GetBeachesResult value)? getBeachesResult,
    TResult Function(GetViewPointsResult value)? getViewPointsResult,
    required TResult orElse(),
  }) {
    if (getTop10Places != null) {
      return getTop10Places(this);
    }
    return orElse();
  }
}

abstract class GetTop10Places implements SearchEvent {
  const factory GetTop10Places() = _$GetTop10Places;
}

/// @nodoc
abstract class _$$GetBeachesResultCopyWith<$Res> {
  factory _$$GetBeachesResultCopyWith(
          _$GetBeachesResult value, $Res Function(_$GetBeachesResult) then) =
      __$$GetBeachesResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBeachesResultCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetBeachesResult>
    implements _$$GetBeachesResultCopyWith<$Res> {
  __$$GetBeachesResultCopyWithImpl(
      _$GetBeachesResult _value, $Res Function(_$GetBeachesResult) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBeachesResult implements GetBeachesResult {
  const _$GetBeachesResult();

  @override
  String toString() {
    return 'SearchEvent.getBeachesResult()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBeachesResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String placeName) getTouristPlaces,
    required TResult Function() getTop10Places,
    required TResult Function() getBeachesResult,
    required TResult Function() getViewPointsResult,
  }) {
    return getBeachesResult();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String placeName)? getTouristPlaces,
    TResult? Function()? getTop10Places,
    TResult? Function()? getBeachesResult,
    TResult? Function()? getViewPointsResult,
  }) {
    return getBeachesResult?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String placeName)? getTouristPlaces,
    TResult Function()? getTop10Places,
    TResult Function()? getBeachesResult,
    TResult Function()? getViewPointsResult,
    required TResult orElse(),
  }) {
    if (getBeachesResult != null) {
      return getBeachesResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTouristPlaces value) getTouristPlaces,
    required TResult Function(GetTop10Places value) getTop10Places,
    required TResult Function(GetBeachesResult value) getBeachesResult,
    required TResult Function(GetViewPointsResult value) getViewPointsResult,
  }) {
    return getBeachesResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTouristPlaces value)? getTouristPlaces,
    TResult? Function(GetTop10Places value)? getTop10Places,
    TResult? Function(GetBeachesResult value)? getBeachesResult,
    TResult? Function(GetViewPointsResult value)? getViewPointsResult,
  }) {
    return getBeachesResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTouristPlaces value)? getTouristPlaces,
    TResult Function(GetTop10Places value)? getTop10Places,
    TResult Function(GetBeachesResult value)? getBeachesResult,
    TResult Function(GetViewPointsResult value)? getViewPointsResult,
    required TResult orElse(),
  }) {
    if (getBeachesResult != null) {
      return getBeachesResult(this);
    }
    return orElse();
  }
}

abstract class GetBeachesResult implements SearchEvent {
  const factory GetBeachesResult() = _$GetBeachesResult;
}

/// @nodoc
abstract class _$$GetViewPointsResultCopyWith<$Res> {
  factory _$$GetViewPointsResultCopyWith(_$GetViewPointsResult value,
          $Res Function(_$GetViewPointsResult) then) =
      __$$GetViewPointsResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetViewPointsResultCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetViewPointsResult>
    implements _$$GetViewPointsResultCopyWith<$Res> {
  __$$GetViewPointsResultCopyWithImpl(
      _$GetViewPointsResult _value, $Res Function(_$GetViewPointsResult) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetViewPointsResult implements GetViewPointsResult {
  const _$GetViewPointsResult();

  @override
  String toString() {
    return 'SearchEvent.getViewPointsResult()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetViewPointsResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String placeName) getTouristPlaces,
    required TResult Function() getTop10Places,
    required TResult Function() getBeachesResult,
    required TResult Function() getViewPointsResult,
  }) {
    return getViewPointsResult();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String placeName)? getTouristPlaces,
    TResult? Function()? getTop10Places,
    TResult? Function()? getBeachesResult,
    TResult? Function()? getViewPointsResult,
  }) {
    return getViewPointsResult?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String placeName)? getTouristPlaces,
    TResult Function()? getTop10Places,
    TResult Function()? getBeachesResult,
    TResult Function()? getViewPointsResult,
    required TResult orElse(),
  }) {
    if (getViewPointsResult != null) {
      return getViewPointsResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTouristPlaces value) getTouristPlaces,
    required TResult Function(GetTop10Places value) getTop10Places,
    required TResult Function(GetBeachesResult value) getBeachesResult,
    required TResult Function(GetViewPointsResult value) getViewPointsResult,
  }) {
    return getViewPointsResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTouristPlaces value)? getTouristPlaces,
    TResult? Function(GetTop10Places value)? getTop10Places,
    TResult? Function(GetBeachesResult value)? getBeachesResult,
    TResult? Function(GetViewPointsResult value)? getViewPointsResult,
  }) {
    return getViewPointsResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTouristPlaces value)? getTouristPlaces,
    TResult Function(GetTop10Places value)? getTop10Places,
    TResult Function(GetBeachesResult value)? getBeachesResult,
    TResult Function(GetViewPointsResult value)? getViewPointsResult,
    required TResult orElse(),
  }) {
    if (getViewPointsResult != null) {
      return getViewPointsResult(this);
    }
    return orElse();
  }
}

abstract class GetViewPointsResult implements SearchEvent {
  const factory GetViewPointsResult() = _$GetViewPointsResult;
}

/// @nodoc
mixin _$SearchState {
  String get stateId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<NearByResult> get placeList => throw _privateConstructorUsedError;
  List<NearByResult> get top10Places => throw _privateConstructorUsedError;
  List<NearByResult> get beachList => throw _privateConstructorUsedError;
  List<NearByResult> get viewPointList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {String stateId,
      bool isLoading,
      bool isError,
      List<NearByResult> placeList,
      List<NearByResult> top10Places,
      List<NearByResult> beachList,
      List<NearByResult> viewPointList});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? placeList = null,
    Object? top10Places = null,
    Object? beachList = null,
    Object? viewPointList = null,
  }) {
    return _then(_value.copyWith(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      placeList: null == placeList
          ? _value.placeList
          : placeList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
      top10Places: null == top10Places
          ? _value.top10Places
          : top10Places // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
      beachList: null == beachList
          ? _value.beachList
          : beachList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
      viewPointList: null == viewPointList
          ? _value.viewPointList
          : viewPointList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stateId,
      bool isLoading,
      bool isError,
      List<NearByResult> placeList,
      List<NearByResult> top10Places,
      List<NearByResult> beachList,
      List<NearByResult> viewPointList});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? placeList = null,
    Object? top10Places = null,
    Object? beachList = null,
    Object? viewPointList = null,
  }) {
    return _then(_$_SearchState(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      placeList: null == placeList
          ? _value._placeList
          : placeList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
      top10Places: null == top10Places
          ? _value._top10Places
          : top10Places // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
      beachList: null == beachList
          ? _value._beachList
          : beachList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
      viewPointList: null == viewPointList
          ? _value._viewPointList
          : viewPointList // ignore: cast_nullable_to_non_nullable
              as List<NearByResult>,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.stateId,
      required this.isLoading,
      required this.isError,
      required final List<NearByResult> placeList,
      required final List<NearByResult> top10Places,
      required final List<NearByResult> beachList,
      required final List<NearByResult> viewPointList})
      : _placeList = placeList,
        _top10Places = top10Places,
        _beachList = beachList,
        _viewPointList = viewPointList;

  @override
  final String stateId;
  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<NearByResult> _placeList;
  @override
  List<NearByResult> get placeList {
    if (_placeList is EqualUnmodifiableListView) return _placeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_placeList);
  }

  final List<NearByResult> _top10Places;
  @override
  List<NearByResult> get top10Places {
    if (_top10Places is EqualUnmodifiableListView) return _top10Places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_top10Places);
  }

  final List<NearByResult> _beachList;
  @override
  List<NearByResult> get beachList {
    if (_beachList is EqualUnmodifiableListView) return _beachList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beachList);
  }

  final List<NearByResult> _viewPointList;
  @override
  List<NearByResult> get viewPointList {
    if (_viewPointList is EqualUnmodifiableListView) return _viewPointList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_viewPointList);
  }

  @override
  String toString() {
    return 'SearchState(stateId: $stateId, isLoading: $isLoading, isError: $isError, placeList: $placeList, top10Places: $top10Places, beachList: $beachList, viewPointList: $viewPointList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._placeList, _placeList) &&
            const DeepCollectionEquality()
                .equals(other._top10Places, _top10Places) &&
            const DeepCollectionEquality()
                .equals(other._beachList, _beachList) &&
            const DeepCollectionEquality()
                .equals(other._viewPointList, _viewPointList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateId,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_placeList),
      const DeepCollectionEquality().hash(_top10Places),
      const DeepCollectionEquality().hash(_beachList),
      const DeepCollectionEquality().hash(_viewPointList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final String stateId,
      required final bool isLoading,
      required final bool isError,
      required final List<NearByResult> placeList,
      required final List<NearByResult> top10Places,
      required final List<NearByResult> beachList,
      required final List<NearByResult> viewPointList}) = _$_SearchState;

  @override
  String get stateId;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<NearByResult> get placeList;
  @override
  List<NearByResult> get top10Places;
  @override
  List<NearByResult> get beachList;
  @override
  List<NearByResult> get viewPointList;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
