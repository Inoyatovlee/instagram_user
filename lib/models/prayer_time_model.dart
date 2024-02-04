class PrayerTimeModel {
  String date;
  String weekday;
  Map times;

  PrayerTimeModel({
    required this.date,
    required this.weekday,
    required this.times,
  });

  factory PrayerTimeModel.fromJson(Map<String, dynamic> json) =>
      PrayerTimeModel(
          date: json['date'], weekday: json['weekday'], times: json['times']);
}
