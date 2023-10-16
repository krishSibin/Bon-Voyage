part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required String stateId,
    required bool isLoading,
    required bool isError,
    required List<NearByResult> placeList,
    required List<NearByResult> top10Places,
    required List<NearByResult> beachList,
    required List<NearByResult> viewPointList,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
      stateId: '0',
      isLoading: true,
      isError: false,
      placeList: [],
      top10Places: [],
      beachList: [],
      viewPointList: []);
}
