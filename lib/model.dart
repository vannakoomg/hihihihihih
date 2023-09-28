class DayModel {
  String? day;
  bool? morning;
  bool? afternoon;

  DayModel({this.day, this.morning, this.afternoon});

  DayModel.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    morning = json['morning'];
    afternoon = json['afternoon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['day'] = day;
    data['morning'] = morning;
    data['afternoon'] = afternoon;
    return data;
  }
}
