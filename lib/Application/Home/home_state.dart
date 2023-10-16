part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool isError,
    required List<NearByResult> restaurentList,
    required List<NearByResult> hotelList,
    required List<NearByResult> bestPlaceList,
    required List<NearByResult> hospitalList,
    required List<NearByResult> policeStationList,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        isLoading: true,
        isError: false,
        restaurentList: [],
        hotelList: [],
        bestPlaceList: [],
        hospitalList: [],
        policeStationList: [],
      );
}
