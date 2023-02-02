// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:collection/collection.dart';

class HotelList {
  String? hotelId;
  String? preferedHotel;
  String? hotelCode;
  String? hotelName;
  String? localHotelId;
  bool? isFavourite;
  String? propertyRating;
  String? available;
  String? location;
  String? latitude;
  String? longitude;
  String? address;
  String? shortDescription;
  String? thumbNailUrl;
  String? rateCurrencyCode;
  double? totalCharges;
  List<String>? mealBasis;

  HotelList({
    this.hotelId,
    this.preferedHotel,
    this.hotelCode,
    this.hotelName,
    this.localHotelId,
    this.isFavourite,
    this.propertyRating,
    this.available,
    this.location,
    this.latitude,
    this.longitude,
    this.address,
    this.shortDescription,
    this.thumbNailUrl,
    this.rateCurrencyCode,
    this.totalCharges,
    this.mealBasis,
  });

  @override
  String toString() {
    return 'HotelList(hotelId: $hotelId, preferedHotel: $preferedHotel, hotelCode: $hotelCode, hotelName: $hotelName, localHotelId: $localHotelId, isFavourite: $isFavourite, propertyRating: $propertyRating, available: $available, location: $location, latitude: $latitude, longitude: $longitude, address: $address, shortDescription: $shortDescription, thumbNailUrl: $thumbNailUrl, rateCurrencyCode: $rateCurrencyCode, totalCharges: $totalCharges, mealBasis: $mealBasis)';
  }

  factory HotelList.fromMap(Map<String, dynamic> data) => HotelList(
        hotelId: data['HotelId'] as String?,
        preferedHotel: data['PreferedHotel'] as String?,
        hotelCode: data['hotelCode'] as String?,
        hotelName: data['HotelName'] as String?,
        localHotelId: data['LocalHotelId'] as String?,
        isFavourite: data['IsFavourite'] as bool?,
        propertyRating: data['PropertyRating'] as String?,
        available: data['Available'] as String?,
        location: data['Location'] as String?,
        latitude: data['Latitude'] as String?,
        longitude: data['Longitude'] as String?,
        address: data['Address'] as String?,
        shortDescription: data['ShortDescription'] as String?,
        thumbNailUrl: data['ThumbNailUrl'] as String?,
        rateCurrencyCode: data['RateCurrencyCode'] as String?,
        totalCharges: (data['TotalCharges'] as num?)?.toDouble(),
        mealBasis: data['MealBasis'] as List<String>?,
      );

  Map<String, dynamic> toMap() => {
        'HotelId': hotelId,
        'PreferedHotel': preferedHotel,
        'hotelCode': hotelCode,
        'HotelName': hotelName,
        'LocalHotelId': localHotelId,
        'IsFavourite': isFavourite,
        'PropertyRating': propertyRating,
        'Available': available,
        'Location': location,
        'Latitude': latitude,
        'Longitude': longitude,
        'Address': address,
        'ShortDescription': shortDescription,
        'ThumbNailUrl': thumbNailUrl,
        'RateCurrencyCode': rateCurrencyCode,
        'TotalCharges': totalCharges,
        'MealBasis': mealBasis,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [HotelList].
  factory HotelList.fromJson(String data) {
    return HotelList.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [HotelList] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! HotelList) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      hotelId.hashCode ^
      preferedHotel.hashCode ^
      hotelCode.hashCode ^
      hotelName.hashCode ^
      localHotelId.hashCode ^
      isFavourite.hashCode ^
      propertyRating.hashCode ^
      available.hashCode ^
      location.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      address.hashCode ^
      shortDescription.hashCode ^
      thumbNailUrl.hashCode ^
      rateCurrencyCode.hashCode ^
      totalCharges.hashCode ^
      mealBasis.hashCode;
}
