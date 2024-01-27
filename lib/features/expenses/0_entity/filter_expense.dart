class FilterExpense {
  final bool isFixed;
  final DateTime? startDate;
  final DateTime? endDate;
  final List<String>? tags;

  FilterExpense({
    required this.isFixed,
    this.startDate,
    this.endDate,
    this.tags,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['isFixed'] = isFixed;

    if (startDate != null) {
      data['startDate'] = startDate.toString();
    }
    if (endDate != null) {
      data['endDate'] = endDate.toString();
    }
    if (tags != null) {
      data['tags'] = tags;
    }
    return data;
  }
}