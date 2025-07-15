import 'package:travel_app_ui/data/models/tourist_place.dart';

final List<TouristPlace> touristPlaces = [
  TouristPlace(
    id: '1',
    name: 'الأهرامات',
    country: 'مصر',
    price: 150.0,
    imageUrl: 'https://example.com/pyramids.jpg',
    rating: 4.8,
    reviewsCount: 1342,
  ),
  TouristPlace(
    id: '2',
    name: 'برج إيفل',
    country: 'فرنسا',
    price: 250.0,
    imageUrl: 'https://example.com/eiffel.jpg',
    rating: 4.6,
    reviewsCount: 2150,
  ),
  TouristPlace(
    id: '3',
    name: 'البتراء',
    country: 'الأردن',
    price: 100.0,
    imageUrl: 'https://example.com/petra.jpg',
    rating: 4.7,
    reviewsCount: 890,
  ),
];
