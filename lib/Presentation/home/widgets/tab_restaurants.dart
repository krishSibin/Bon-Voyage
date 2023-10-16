import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miniproject_traveller/Application/Home/home_bloc.dart';
import 'package:miniproject_traveller/Infrastructure/apikey.dart';
import 'package:miniproject_traveller/Presentation/home/sub_pages/restaurant_view.dart';

ValueNotifier<List<String?>> detailsObj = ValueNotifier([]);

class RestaurentTabWidget extends StatelessWidget {
  final String place;
  const RestaurentTabWidget({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getNearbyRestaurents(placeName: place));
    });
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final response = state.restaurentList;
        final res = response.map((e) {
          return e.name;
        }).toList();

        detailsObj.value.addAll(res);

        final resp = response.map((e) {
          return e.photos;
        }).toList();

        final outp = resp.map((e) {
          return e?[0];
        }).toList();
        final photoRef = outp.map((e) {
          return e?.photoReference;
        }).toList();

        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        } else if (state.isError) {
          return const Center(
            child: Text("ERROR"),
          );
        } else if (state.restaurentList.isEmpty) {
          return const Center(
            child: Text("LIST IS EMPTY"),
          );
        } else {
          return ListView.separated(
              itemBuilder: (context, index) {
                return OpenContainer(
                  transitionType: ContainerTransitionType.fadeThrough,
                  openElevation: 0,
                  closedElevation: 0,
                  transitionDuration: const Duration(milliseconds: 700),
                  closedBuilder: (context, _) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //  crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 190,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://maps.googleapis.com/maps/api/place/photo?photoreference=${photoRef[index]}&maxheight=150&maxwidth=190&key=$apiKey',
                                ),
                              ),
                            ),
                          ),
                          Column(
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 30),
                                width: 200,
                                child: Text(
                                  res[index] ?? 'NO NAME',
                                  style: TextStyle(fontSize: 20),
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              //   const Text('Veg/nonveg/both'),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  openBuilder: (context, _) {
                    restName = res[index] ?? 'NO Name';
                    return RestaurentDetails(
                      restName: res[index] ?? 'NO NAME',
                    );
                  },
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 20,
                  child: Divider(
                    height: 10,
                    thickness: .5,
                  ),
                );
              },
              itemCount: res.length);
        }
      },
    );
  }
}
