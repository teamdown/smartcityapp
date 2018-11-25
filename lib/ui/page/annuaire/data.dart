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
  Book('Association', 'Akamasoa',
      'Rp 50.000', './assets/res/association.jpg', 3.5, 123),
  Book('Buku Pintar Drafter Untuk Pemula Hingga Mahir', 'Widada', 'Rp 55.000',
      './assets/res/drafter.jpg', 4.5, 200),
  Book('Adobe InDesign: Seri Panduan Terlengkap', 'Jubilee Enterprise',
      'Rp 60.000', './assets/res/commerce.jpg', 5.0, 324),
  Book('Pemodelan Objek Dengan 3Ds Max 2014', 'Wahana Komputer', 'Rp 58.000',
      './assets/res/max_3d.jpeg', 3.0, 200),
  Book('Penerapan Visualisasi 3D Dengan Autodesk Maya', 'Dhani Ariatmanto',
      'Rp 90.000', './assets/res/Telma-logo.jpg', 4.8, 234),
  Book('Teknik Lancar Menggunakan Adobe Photoshop', 'Jubilee Enterprise',
      'Rp 57.000', './assets/res/photoshop.jpg', 4.5, 240),
  Book('Adobe Premiere Terlengkap dan Termudah', 'Jubilee Enterprise',
      'Rp 56.000', './assets/res/premier.jpg', 4.8, 432),
  Book('Cad Series : Google Sketchup Untuk Desain 3D', 'Wahana Komputer',
      'Rp 55.000', './assets/res/sketchup.jpeg', 4.5, 321),
  Book('Webmaster Series : Trik Cepat Menguasai CSS', 'Wahana Komputer',
      'Rp 54.000', './assets/res/webmaster.jpeg', 3.5, 431),
];
