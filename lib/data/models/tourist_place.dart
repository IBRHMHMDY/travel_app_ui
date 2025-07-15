class TouristPlace {
  final String id;
  final String name;              // اسم المنطقة السياحية
  final String country;           // البلد
  final double price;             // السعر
  final String imageUrl;          // رابط الصورة
  final double rating;            // التقييم (من 5)
  final int reviewsCount;         // عدد المراجعات

  TouristPlace({
    required this.id,
    required this.name,
    required this.country,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.reviewsCount,
  });
}
