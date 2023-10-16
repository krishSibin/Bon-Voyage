import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:miniproject_traveller/Domain/core/failures/main_failure.dart';

import 'package:miniproject_traveller/Domain/search/models/place_details/nearby_places/nearby_places.dart';
import 'package:miniproject_traveller/Domain/search/search_service.dart';
import 'package:miniproject_traveller/Domain/search/search_serviceTop10.dart';
import 'package:miniproject_traveller/Domain/search/search_service_beaches.dart';
import 'package:miniproject_traveller/Domain/search/search_service_view_points.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchService getPlace;
  final SearchServiceTop10 getTop;
  final SearchServiceBeaches getBeach;
  final SearchServiceViewPoints getViewPoint;
  SearchBloc(this.getPlace, this.getTop, this.getBeach, this.getViewPoint)
      : super(SearchState.initial()) {
    on<GetTouristPlaces>(
      (event, emit) async {
        // if (state.placeList.isNotEmpty) {
        //   log('inside the bloc condition of search place');
        //   emit(state);
        //   return;
        // }
        if (state.placeList.isEmpty) {
          log('place list is empty');
          log('inside bloc loc name is ${event.placeName}');
        }

        emit(
          state.copyWith(
            isError: false,
            isLoading: true,
            placeList: [],
          ),
        );

        final result = await getPlace.getPlaceDetails(event.placeName);
        log('after calling fun ${result.toString()}');
        log('inside gettourist bloc');

        emit(
          result.fold((MainFailure failure) {
            return state
                .copyWith(isError: true, isLoading: false, placeList: []);
          },
              //  SearchState(isLoading: false, isError: true, placeList: [],top10Places: state.top10Places),

              (result) {
            return state.copyWith(
              isError: false,
              isLoading: false,
              placeList: result.results ?? [],
            );
          }),
        );
      },
    );
    on<GetTop10Places>((event, emit) async {
      if (state.top10Places.isNotEmpty) {
        emit(state);
        return;
      }

      emit(
        SearchState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          isLoading: true,
          isError: false,
          placeList: state.placeList,
          top10Places: [],
          beachList: state.beachList,
          viewPointList: state.viewPointList,
        ),
      );

      final result = await getTop.getTop10Places();
      log('inside top10 bloc');

      emit(
        result.fold((MainFailure failure) {
          return state
              .copyWith(isError: true, isLoading: false, top10Places: []);
        }, (res) {
          return state.copyWith(
              isError: false, isLoading: false, top10Places: res.results ?? []);
        }),
      );
    });

    on<GetBeachesResult>((event, emit) async {
      if (state.beachList.isNotEmpty) {
        emit(state);
        return;
      }

      emit(
        SearchState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          isLoading: true,
          isError: false,
          placeList: state.placeList,
          top10Places: state.top10Places,
          beachList: [],
          viewPointList: state.viewPointList,
        ),
      );

      final result = await getBeach.getBeaches();
      log('inside beach event');

      emit(
        result.fold((MainFailure failure) {
          return state.copyWith(isError: true, isLoading: false, beachList: []);
        }, (res) {
          return state.copyWith(
              isError: false, isLoading: false, beachList: res.results ?? []);
        }),
      );
    });

    on<GetViewPointsResult>((event, emit) async {
      if (state.viewPointList.isNotEmpty) {
        emit(state);
        return;
      }

      emit(
        SearchState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          isLoading: true,
          isError: false,
          placeList: state.placeList,
          top10Places: state.top10Places,
          beachList: state.beachList,
          viewPointList: [],
        ),
      );

      final result = await getViewPoint.getViewPoints();
      log('inside viewpoints event');

      emit(
        result.fold((MainFailure failure) {
          return state
              .copyWith(isError: true, isLoading: false, viewPointList: []);
        }, (res) {
          return state.copyWith(
              isError: false,
              isLoading: false,
              viewPointList: res.results ?? []);
        }),
      );
    });
  }
}
