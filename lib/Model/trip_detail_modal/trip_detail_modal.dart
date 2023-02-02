import 'dart:convert';

import 'package:collection/collection.dart';

import 'hotel_list.dart';

class TripDetailModal {
  int? totalCount;
  List<String>? mealBasisOptions;
  String? webServiceVersion;
  String? message;
  List<HotelList>? hotelList;
  String? searchUniqueId;
  String? status;
  String? startTime;
  String? endTime;

  TripDetailModal({
    this.totalCount,
    this.mealBasisOptions,
    this.webServiceVersion,
    this.message,
    this.hotelList,
    this.searchUniqueId,
    this.status,
    this.startTime,
    this.endTime,
  });

  @override
  String toString() {
    return 'TripDetailModal(totalCount: $totalCount, mealBasisOptions: $mealBasisOptions, webServiceVersion: $webServiceVersion, message: $message, hotelList: $hotelList, searchUniqueId: $searchUniqueId, status: $status, startTime: $startTime, endTime: $endTime)';
  }

  factory TripDetailModal.fromMap(Map<String, dynamic> data) {
    return TripDetailModal(
      totalCount: data['TotalCount'] as int?,
      mealBasisOptions: data['MealBasisOptions'] as List<String>?,
      webServiceVersion: data['WebServiceVersion'] as String?,
      message: data['Message'] as String?,
      hotelList: (data['HotelList'] as List<dynamic>?)
          ?.map((e) => HotelList.fromMap(e as Map<String, dynamic>))
          .toList(),
      searchUniqueId: data['SearchUniqueId'] as String?,
      status: data['Status'] as String?,
      startTime: data['StartTime'] as String?,
      endTime: data['EndTime'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'TotalCount': totalCount,
        'MealBasisOptions': mealBasisOptions,
        'WebServiceVersion': webServiceVersion,
        'Message': message,
        'HotelList': hotelList?.map((e) => e.toMap()).toList(),
        'SearchUniqueId': searchUniqueId,
        'Status': status,
        'StartTime': startTime,
        'EndTime': endTime,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [TripDetailModal].
  factory TripDetailModal.fromJson(String data) {
    return TripDetailModal.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TripDetailModal] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! TripDetailModal) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      totalCount.hashCode ^
      mealBasisOptions.hashCode ^
      webServiceVersion.hashCode ^
      message.hashCode ^
      hotelList.hashCode ^
      searchUniqueId.hashCode ^
      status.hashCode ^
      startTime.hashCode ^
      endTime.hashCode;
}
