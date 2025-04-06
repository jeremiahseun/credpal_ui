class Merchant {
  final String id;
  final String name;
  final String logoUrl;
  final bool isOnline;

  Merchant({
    required this.id,
    required this.name,
    required this.logoUrl,
    this.isOnline = false,
  });
}
