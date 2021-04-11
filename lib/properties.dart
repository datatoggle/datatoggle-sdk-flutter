// https://github.com/segmentio/analytics-android/blob/b089df7808126d22c8f4b9f5850f521cffc65ef9/analytics/src/main/java/com/segment/analytics/Properties.java

import 'package:datatoggle/product.dart';

class Properties {
  // Common Properties
  final double? revenue;
  final String? currency;
  final double? value;
  // Screen Properties
  final String? path;
  final String? referrer;
  final String? title;
  final String? url;
  // Ecommerce API
  final String? name; // used by product too
  final String? category;
  final String? sku;
  final double? price;
  final String? id;
  final String? orderId;
  final double? total;
  final double? subtotal;
  final double? shipping;
  final double? tax;
  final double? discount;
  final String? coupon;
  final List<Product>? products;
  final bool? repeat;

  final Map<String, Object> others;

  Properties(
      {this.revenue,
      this.currency,
      this.value,
      this.path,
      this.referrer,
      this.title,
      this.url,
      this.name,
      this.category,
      this.sku,
      this.price,
      this.id,
      this.orderId,
      this.total,
      this.subtotal,
      this.shipping,
      this.tax,
      this.discount,
      this.coupon,
      this.products,
      this.repeat,
      this.others = const {}});
}
