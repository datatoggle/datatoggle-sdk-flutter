//https://github.com/segmentio/analytics-android/blob/b089df7808126d22c8f4b9f5850f521cffc65ef9/analytics/src/main/java/com/segment/analytics/Properties.java#L389

class Product {
  final String id;
  final String? productId;
  final String sku;
  final String? name;
  final double price;
  final Map<String, Object> others;

  Product(this.id, this.sku, this.price, {this.name, this.productId, this.others = const {}});
}
