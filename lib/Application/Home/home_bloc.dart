import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:miniproject_traveller/Domain/core/failures/main_failure.dart';
import 'package:miniproject_traveller/Domain/home/home_service_hospital.dart';
import 'package:miniproject_traveller/Domain/home/home_service_hotels.dart';
import 'package:miniproject_traveller/Domain/home/home_service_places.dart';
import 'package:miniproject_traveller/Domain/home/home_service_police.dart';
import 'package:miniproject_traveller/Domain/home/home_service_rest.dart';
import 'package:miniproject_traveller/Domain/search/models/place_details/nearby_places/nearby_places.dart';
import 'package:miniproject_traveller/Presentation/search/search.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeServiceRestaurents restObj;
  final HomeServiceHotels hotelsObj;
  final HomeServiceBestPlaces bestPlacesObj;
  final HomeServiceHospital hospitalsObj;
  final HomeServicePolice policeObj;
  HomeBloc(this.restObj, this.hotelsObj, this.bestPlacesObj, this.hospitalsObj,
      this.policeObj)
      : super(HomeState.initial()) {
    on<GetNearbyRestaurents>((event, emit) async {
      if (state.restaurentList.isNotEmpty && searchRest == true) {
        emit(state);
        return;
      }

      emit(state.copyWith(isLoading: true, isError: false, restaurentList: []));

      final result = await restObj.getRestaurents(event.placeName);
      searchRest = true;

      log('inside get restuarent event');
      log(result.toString());

      emit(result.fold((MainFailure l) {
        return state
            .copyWith(isLoading: false, isError: true, restaurentList: []);
      }, (res) {
        return state.copyWith(
            isLoading: false,
            isError: false,
            restaurentList: res.results ?? []);
      }));
    });

    on<GetNearbyHotels>((event, emit) async {
      if (state.hotelList.isNotEmpty && searchHotel == true) {
        emit(state);
        return;
      }

      emit(state.copyWith(isLoading: true, isError: false, hotelList: []));

      final result = await hotelsObj.getHotels(event.placeName);
      searchHotel = true;

      log('inside get hotels event');
      log(result.toString());

      emit(result.fold((MainFailure l) {
        return state.copyWith(isLoading: false, isError: true, hotelList: []);
      }, (res) {
        return state.copyWith(
            isLoading: false, isError: false, hotelList: res.results ?? []);
      }));
    });

    on<GetNearbyBestPlaces>((event, emit) async {
      if (state.bestPlaceList.isNotEmpty && searchPlace == true) {
        emit(state);
        return;
      }

      emit(state.copyWith(isLoading: true, isError: false, bestPlaceList: []));

      final result = await bestPlacesObj.getBestPlaces(event.placeName);
      searchPlace = true;
      log('search field value is $searchPlace inside bloc');

      log('inside get bestPlaces event');
      log(result.toString());

      emit(result.fold((MainFailure l) {
        return state
            .copyWith(isLoading: false, isError: true, bestPlaceList: []);
      }, (res) {
        return state.copyWith(
            isLoading: false, isError: false, bestPlaceList: res.results ?? []);
      }));
    });

    on<getNearPoliceStations>((event, emit) async {
      if (state.policeStationList.isNotEmpty && searchPlace == true) {
        emit(state);
        return;
      }

      emit(state
          .copyWith(isLoading: true, isError: false, policeStationList: []));

      final result = await policeObj.getPoliceStation(event.placeName);
      searchPlace = true;

      log('inside get police event');
      log(result.toString());

      emit(result.fold((MainFailure l) {
        return state
            .copyWith(isLoading: false, isError: true, policeStationList: []);
      }, (res) {
        return state.copyWith(
            isLoading: false,
            isError: false,
            policeStationList: res.results ?? []);
      }));
    });

    on<GetNearHospitals>((event, emit) async {
      if (state.hospitalList.isNotEmpty && searchHospital == true) {
        emit(state);
        return;
      }

      emit(state.copyWith(isLoading: true, isError: false, hospitalList: []));

      final result = await hospitalsObj.getHospitals(event.placeName);
      searchHospital = true;

      log('inside get hospital event');
      log(result.toString());

      emit(result.fold((MainFailure l) {
        return state
            .copyWith(isLoading: false, isError: true, hospitalList: []);
      }, (res) {
        return state.copyWith(
            isLoading: false, isError: false, hospitalList: res.results ?? []);
      }));
    });
  }
}
