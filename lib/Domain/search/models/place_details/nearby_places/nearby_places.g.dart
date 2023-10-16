// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearby_places.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearbyPlaces _$NearbyPlacesFromJson(Map<String, dynamic> json) => NearbyPlaces(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => NearByResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NearbyPlacesToJson(NearbyPlaces instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

NearByResult _$NearByResultFromJson(Map<String, dynamic> json) => NearByResult(
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      name: json['name'] as String?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      placeId: json['place_id'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      vicinity: json['vicinity'] as String?,
    );

Map<String, dynamic> _$NearByResultToJson(NearByResult instance) =>
    <String, dynamic>{
      'geometry': instance.geometry,
      'name': instance.name,
      'photos': instance.photos,
      'place_id': instance.placeId,
      'rating': instance.rating,
      'vicinity': instance.vicinity,
    };

Geometry _$GeometryFromJson(Map<String, dynamic> json) => Geometry(
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeometryToJson(Geometry instance) => <String, dynamic>{
      'location': instance.location,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo(
      height: json['height'] as int?,
      photoReference: json['photo_reference'] as String?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'height': instance.height,
      'photo_reference': instance.photoReference,
      'width': instance.width,
    };
