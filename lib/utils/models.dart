class Category {
  final String title;
  final String image;

  Category({required this.title, required this.image});
}

class Texts {
  final String title;
  final String image;

  Texts({required this.title, required this.image});
}

final List<Category> categories = [
  Category(title: 'Durmuş', image: 'assets/popular/1.jpg'),
  Category(title: 'Maşgala', image: 'assets/popular/2.jpg'),
  Category(title: 'Öwüt-terbiýe', image: 'assets/popular/3.jpg'),
  Category(title: 'Ýaşlyk', image: 'assets/popular/4.jpg'),
  Category(title: 'Tebigat', image: 'assets/popular/5.jpg'),
  Category(title: 'Oboý obam', image: 'assets/popular/6.jpg'),
];

final List<Texts> texts = [
  Texts(title: 'Bileýin  diýseň', image: 'assets/popular/1.jpg'),
  Texts(title: 'Öýkelemäň,  adamlar!', image: 'assets/popular/2.jpg'),
  Texts(title: 'Gerekdir', image: 'assets/popular/3.jpg'),
  Texts(title: 'Ýetmez  heý', image: 'assets/popular/4.jpg'),
  Texts(title: 'Oglum', image: 'assets/popular/5.jpg'),
  Texts(title: 'Ýaradandan  ýalňyz dileg', image: 'assets/popular/6.jpg'),
];
