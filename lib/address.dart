class Address {
  final String? city;
  final String? country;
  final String? postalCode;
  final String? state;
  final String? street;
  final Map<String, Object> others;

  Address({this.city, this.country, this.postalCode, this.state, this.street, this.others = const {}});
}
