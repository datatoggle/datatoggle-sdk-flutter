// https://github.com/segmentio/analytics-android/blob/b089df7808126d22c8f4b9f5850f521cffc65ef9/analytics/src/main/java/com/segment/analytics/Traits.java#L49
// A class representing information about a user. Passed to "identify" of "group" function
import 'package:datatoggle/address.dart';

class Traits {
  final String? avatar;
  final DateTime? createdAt;
  final String? description;
  final String? email;
  final String? fax;
  final String? name;
  final String? phone;
  final String? website;
  final int? age;
  final DateTime? birthday;
  final String? firstName;
  final String? gender;
  final String? lastName;
  final String? title;
  final String? username;
  final int? employees;
  final String? industry;
  final Address? address;
  final Map<String, Object> others;

  Traits(
      {this.avatar,
      this.createdAt,
      this.description,
      this.email,
      this.fax,
      this.name,
      this.phone,
      this.website,
      this.age,
      this.birthday,
      this.firstName,
      this.gender,
      this.lastName,
      this.title,
      this.username,
      this.employees,
      this.industry,
      this.address,
      this.others = const {}});
}
