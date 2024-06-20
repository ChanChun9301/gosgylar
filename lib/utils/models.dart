import 'dart:convert';

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

List<Map<String, dynamic>> poems = [
  {'id': 1, 'title': 'Myradyň  okaýşy', 'fav': false},
  {'id': 2, 'title': 'Awtobusyň şofýory', 'fav': false},
  {'id': 3, 'title': 'Myrat bilen  güjügi', 'fav': false},
  {'id': 4, 'title': 'Çüw, atym!..', 'fav': false},
  {'id': 5, 'title': 'Gurjak', 'fav': false},
  {'id': 6, 'title': 'Gyş aýdymjygy', 'fav': false},
  {'id': 7, 'title': 'Orazmyrat suratçy', 'fav': false},
  {'id': 8, 'title': 'Garagol Myrat', 'fav': false},
  {'id': 9, 'title': 'Meşhur oglan', 'fav': false},
  {'id': 10, 'title': 'Nury aglasa...', 'fav': false},
  {'id': 11, 'title': 'Pişik-syçan oýnadylar...', 'fav': false},
  {'id': 7, 'title': 'Orazmyrat suratçy', 'fav': false},
  {'id': 8, 'title': 'Garagol Myrat', 'fav': false},
  {'id': 9, 'title': 'Meşhur oglan', 'fav': false},
  {'id': 10, 'title': 'Nury aglasa...', 'fav': false},
  {'id': 11, 'title': 'Pişik-syçan oýnadylar...', 'fav': false},
];

List<Map<String, dynamic>> fav_poems = [
  {'id': 6, 'title': 'Gyş aýdymjygy', 'fav': false},
  {'id': 7, 'title': 'Orazmyrat suratçy', 'fav': false},
  {'id': 8, 'title': 'Garagol Myrat', 'fav': false},
  {'id': 9, 'title': 'Meşhur oglan', 'fav': false},
  {'id': 10, 'title': 'Nury aglasa...', 'fav': false},
  {'id': 11, 'title': 'Pişik-syçan oýnadylar...', 'fav': false},
  {'id': 1, 'title': 'Myradyň  okaýşy', 'fav': false},
  {'id': 2, 'title': 'Awtobusyň şofýory', 'fav': false},
  {'id': 3, 'title': 'Myrat bilen  güjügi', 'fav': false},
  {'id': 4, 'title': 'Çüw, atym!..', 'fav': false},
  {'id': 10, 'title': 'Nury aglasa...', 'fav': false},
  {'id': 11, 'title': 'Pişik-syçan oýnadylar...', 'fav': false},
  {'id': 1, 'title': 'Myradyň  okaýşy', 'fav': false},
  {'id': 2, 'title': 'Awtobusyň şofýory', 'fav': false},
  {'id': 3, 'title': 'Myrat bilen  güjügi', 'fav': false},
  {'id': 5, 'title': 'Gurjak', 'fav': false},
];

class PoemModel {
  final int id;
  final String text;
  final String poem_id;

  PoemModel({
    required this.id,
    required this.poem_id,
    required this.text,
  });

  Map<String, Object> toMap() {
    return {
      'id': id,
      'poem_id': poem_id,
      'text': text,
    };
  }

  factory PoemModel.fromMap(Map<String, dynamic> map) {
    return PoemModel(
      id: map['id'],
      poem_id: map['poem_id'],
      text: map['text'],
    );
  }
}
