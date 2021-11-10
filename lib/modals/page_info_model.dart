
class Pageable {
  Pageable({
    this.sort,
    this.offset,
    this.pageNumber,
    this.pageSize,
    this.unpaged,
    this.paged,
  });

  PageableSort? sort;
  int? offset;
  int? pageNumber;
  int? pageSize;
  bool? unpaged;
  bool? paged;

  factory Pageable.fromJson(Map<String, dynamic> json) => Pageable(
    sort: PageableSort.fromJson(json['sort']),
    offset: json['offset'],
    pageNumber: json['pageNumber'],
    pageSize: json['pageSize'],
    unpaged: json['unpaged'],
    paged: json['paged'],
  );

  Map<String, dynamic> toJson() => {
    'sort': sort!.toJson(),
    'offset': offset,
    'pageNumber': pageNumber,
    'pageSize': pageSize,
    'unpaged': unpaged,
    'paged': paged,
  };
}

class PageableSort {
  PageableSort({
    this.ref,
  });

  String? ref;

  factory PageableSort.fromJson(Map<String, dynamic> json) => PageableSort(
    ref: json['\u0024ref'],
  );

  Map<String, dynamic> toJson() => {
    '\u0024ref': ref,
  };
}

class OrderAllDataSort {
  OrderAllDataSort({
    this.sorted,
    this.unsorted,
    this.empty,
  });

  bool? sorted;
  bool? unsorted;
  bool? empty;

  factory OrderAllDataSort.fromJson(Map<String, dynamic> json) => OrderAllDataSort(
    sorted: json['sorted'],
    unsorted: json['unsorted'],
    empty: json['empty'],
  );

  Map<String, dynamic> toJson() => {
    'sorted': sorted,
    'unsorted': unsorted,
    'empty': empty,
  };
}