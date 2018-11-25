class Book {
  String title,
      writer,
      price,
      image,
      description =
          'Vous valorisez les commerces locaux.\nGrâce à l’application mobile, vous mettez en valeur l’activité de proximité : commerçants, artistes et artisans, producteurs… .';
  int pages;
  double rating;

  Book(
      this.title, this.writer, this.price, this.image, this.rating, this.pages);
}

final List<Book> books = [
  Book('Association', 'Akamasoa', 'Rp 50.000', './assets/res/association.jpg',
      3.5, 123),
  Book(
      'Commerce', 'Widada', 'Rp 55.000', './assets/res/commerce.jpg', 4.5, 200),
  Book('Enrtreprises', 'Jubilee Enterprise', 'Rp 60.000',
      './assets/res/commerce.jpg', 5.0, 324),
  Book('Horeca', 'Wahana Komputer', 'Rp 58.000',
      './assets/res/tananarive_ville.jpg', 3.0, 200),
  Book('Proffesions Liberales', 'Dhani Ariatmanto', 'Rp 90.000',
      './assets/res/tsena.jpg', 4.8, 234),
  Book('Indépendants', 'Jubilee Enterprise', 'Rp 57.000',
      './assets/res/tananarive_ville.jpg', 4.5, 240),
  Book('Loisir', 'Jubilee Enterprise', 'Rp 56.000',
      './assets/res/tananarive_ville.jpg', 4.8, 432),
  Book('Tourisme', 'Wahana Komputer', 'Rp 55.000', './assets/res/commerce.jpg',
      4.5, 321),
];
