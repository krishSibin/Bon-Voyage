import 'package:json_annotation/json_annotation.dart';

part 'nearby_places.g.dart';

@JsonSerializable()
class NearbyPlaces {
  List<NearByResult>? results;

  NearbyPlaces({
    this.results,
  });

  factory NearbyPlaces.fromJson(Map<String, dynamic> json) {
    return _$NearbyPlacesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NearbyPlacesToJson(this);
}

@JsonSerializable()
class NearByResult {
  Geometry? geometry;

  String? name;

  List<Photo>? photos;
  @JsonKey(name: 'place_id')
  String? placeId;
  double? rating;
  String? vicinity;

  NearByResult(
      {this.geometry,
      this.name,
      this.photos,
      this.placeId,
      this.rating,
      this.vicinity});

  factory NearByResult.fromJson(Map<String, dynamic> json) {
    return _$NearByResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NearByResultToJson(this);
}

//geometry
@JsonSerializable()
class Geometry {
  Location? location;

  Geometry({
    this.location,
  });

  factory Geometry.fromJson(Map<String, dynamic> json) {
    return _$GeometryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GeometryToJson(this);
}

//location for geometry
@JsonSerializable()
class Location {
  double? lat;
  double? lng;

  Location({this.lat, this.lng});

  factory Location.fromJson(Map<String, dynamic> json) {
    return _$LocationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class Photo {
  int? height;

  @JsonKey(name: 'photo_reference')
  String? photoReference;
  int? width;

  Photo({
    this.height,
    this.photoReference,
    this.width,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
