
class ItemData {
  final String name;
  final String type;
  final String url;
  final String imageUrl;
  final String renderUrl;
  late bool obtained;

  ItemData({required this.name, required this.type, required this.url, required this.imageUrl, this.renderUrl = 'null', required this.obtained});

  void setObtained(value) {
    obtained = value;
  }

  factory ItemData.fromMap(Map<String, dynamic> map) {
    return ItemData(
      name: map['name'],
      type: map['type'],
      url: map['url'],
      imageUrl: map['image_url'],
      obtained: map['obtained'] == 1,
    );
  }

  Map<String, Object?> toMap() {
    return {
      'name': name,
      'type': type,
      'url': url,
      'image_url': imageUrl,
      'render_url': renderUrl,
      'obtained': obtained.toString()
    };
  }

}