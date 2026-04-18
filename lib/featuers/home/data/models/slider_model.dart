class SliderModel {
  final SliderData? data;
  final String? message;
  final List<dynamic>? error;
  final int? status;

  SliderModel({this.data, this.message, this.error, this.status});

  factory SliderModel.fromJson(Map<String, dynamic> json) {
    return SliderModel(
      data: json['data'] != null ? SliderData.fromJson(json['data']) : null,
      message: json['message'],
      error: json['error'] != null ? List<dynamic>.from(json['error']) : [],
      status: json['status'],
    );
  }
}

class SliderData {
  final List<SliderItem>? sliders;

  SliderData({this.sliders});

  factory SliderData.fromJson(Map<String, dynamic> json) {
    return SliderData(
      sliders: json['sliders'] != null
          ? List<SliderItem>.from(
              json['sliders'].map((x) => SliderItem.fromJson(x)),
            )
          : [],
    );
  }
}

class SliderItem {
  final String? image;

  SliderItem({this.image});

  factory SliderItem.fromJson(Map<String, dynamic> json) {
    return SliderItem(image: json['image']);
  }
}
