import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@Freezed(genericArgumentFactories: true)
class Pagination<T> with _$Pagination<T> {
  const Pagination._();

  const factory Pagination({
    @Default(0) int currentPage,
    @Default(0) int totalPages,
    @Default(0) int pageSize,
    @Default(0) int totalItems,
    @Default([]) List<T> items,
    String? nextPageUrl,
  }) = _Pagination<T>;

  factory Pagination.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$PaginationFromJson(json, fromJsonT);

  bool get hasNextPage => currentPage < totalPages;
}

// class Pagination<T> {
//   final int currentPage;
//   final int totalPages;
//   final int pageSize;
//   final int totalItems;
//   final String? nextPageUrl;

//   final List<T> items;

//   const Pagination({
//     required this.currentPage,
//     required this.totalPages,
//     required this.pageSize,
//     required this.totalItems,
//     required this.items,
//     this.nextPageUrl,
//   });

//   bool get hasNextPage => currentPage < totalPages;

//   const Pagination.empty()
//       : currentPage = 0,
//         totalPages = 0,
//         pageSize = 0,
//         totalItems = 0,
//         items = const [],
//         nextPageUrl = '';

//   // copy with
//   Pagination<T> copyWith({
//     int? currentPage,
//     int? totalPages,
//     int? pageSize,
//     int? totalItems,
//     List<T>? items,
//     String? nextPageUrl,
//   }) {
//     return Pagination(
//       currentPage: currentPage ?? this.currentPage,
//       totalPages: totalPages ?? this.totalPages,
//       pageSize: pageSize ?? this.pageSize,
//       totalItems: totalItems ?? this.totalItems,
//       items: items ?? this.items,
//       nextPageUrl: nextPageUrl ?? this.nextPageUrl,
//     );
//   }

//   factory Pagination.fromJson(
//       Map<String, dynamic> json, T Function(dynamic) fromJsonT) {
//     print(json['meta']);
//     return Pagination(
//       currentPage: json['meta']['current_page'] as int,
//       totalPages: json['meta']['last_page'] as int,
//       pageSize: json['meta']['per_page'] as int,
//       totalItems: json['meta']['total'] as int,
//       nextPageUrl: json['links']['next'] as String?,
//       items: (json['items'] as List).map<T>(fromJsonT).toList(),
//     );
//   }

//   Map<String, dynamic> toJson(Map<String, dynamic> Function(T) toJsonT) {
//     return {
//       'currentPage': currentPage,
//       'totalPages': totalPages,
//       'pageSize': pageSize,
//       'totalItems': totalItems,
//       'items': items.map(toJsonT).toList(),
//     };
//   }

//   @override
//   String toString() {
//     return 'Pagination(currentPage: $currentPage, totalPages: $totalPages, pageSize: $pageSize, totalItems: $totalItems, nextPageUrl: $nextPageUrl, items: $items)';
//   }
// }
