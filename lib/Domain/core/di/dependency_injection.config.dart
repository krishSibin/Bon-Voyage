// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../Application/Home/home_bloc.dart' as _i21;
import '../../../Application/Search/search_bloc.dart' as _i22;
import '../../../Infrastructure/Home/home_impl_bestPlaces.dart' as _i4;
import '../../../Infrastructure/Home/home_impl_hospitals.dart' as _i6;
import '../../../Infrastructure/Home/home_impl_hotels.dart' as _i8;
import '../../../Infrastructure/Home/home_impl_police.dart' as _i10;
import '../../../Infrastructure/Home/home_impl_restaurents.dart' as _i12;
import '../../../Infrastructure/Search/search_impl_beaches.dart' as _i16;
import '../../../Infrastructure/Search/search_impl_view_points.dart' as _i20;
import '../../../Infrastructure/Search/search_repo_top10.dart' as _i18;
import '../../../Infrastructure/Search/search_service_impl.dart' as _i14;
import '../../home/home_service_hospital.dart' as _i5;
import '../../home/home_service_hotels.dart' as _i7;
import '../../home/home_service_places.dart' as _i3;
import '../../home/home_service_police.dart' as _i9;
import '../../home/home_service_rest.dart' as _i11;
import '../../search/search_service.dart' as _i13;
import '../../search/search_service_beaches.dart' as _i15;
import '../../search/search_service_view_points.dart' as _i19;
import '../../search/search_serviceTop10.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.HomeServiceBestPlaces>(
      () => _i4.HomeRepoBestPlacesImpl());
  gh.lazySingleton<_i5.HomeServiceHospital>(() => _i6.HomeRepoHospitalsImpl());
  gh.lazySingleton<_i7.HomeServiceHotels>(() => _i8.HomeRepoHotelImpl());
  gh.lazySingleton<_i9.HomeServicePolice>(() => _i10.HomeRepoPoliceImpl());
  gh.lazySingleton<_i11.HomeServiceRestaurents>(
      () => _i12.HomeRepoRestaurentsImpl());
  gh.lazySingleton<_i13.SearchService>(
      () => _i14.SearchServiceImplementation());
  gh.lazySingleton<_i15.SearchServiceBeaches>(() => _i16.SearchRepoBeaches());
  gh.lazySingleton<_i17.SearchServiceTop10>(() => _i18.SearchRepoTop10());
  gh.lazySingleton<_i19.SearchServiceViewPoints>(
      () => _i20.SearchRepoViewPoints());
  gh.factory<_i21.HomeBloc>(() => _i21.HomeBloc(
        get<_i11.HomeServiceRestaurents>(),
        get<_i7.HomeServiceHotels>(),
        get<_i3.HomeServiceBestPlaces>(),
        get<_i5.HomeServiceHospital>(),
        get<_i9.HomeServicePolice>(),
      ));
  gh.factory<_i22.SearchBloc>(() => _i22.SearchBloc(
        get<_i13.SearchService>(),
        get<_i17.SearchServiceTop10>(),
        get<_i15.SearchServiceBeaches>(),
        get<_i19.SearchServiceViewPoints>(),
      ));
  return get;
}
