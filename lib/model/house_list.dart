class House {
  String title;
  String image;
  String price;
  int room;
  int long;
  int width;

  House(
      {required this.title,
      required this.image,
      required this.price,
      required this.room,
      required this.long,
      required this.width});

  String getSized() {
    var result = long * width;
    return "$result" "m2";
  }

  String getRoom() {
    return "$room Kamar";
  }
}

var houseList = [
  House(
      title: "Rumah Gahar Banget",
      image:
          "https://img.iproperty.com.my/angel-legacy/1110x624-crop/static/2019/05/Bentuk-Rumah-Minimalis-1.jpg",
      price: "RP. 350.000.000",
      room: 3,
      long: 10,
      width: 20),
  House(
      title: "Rumah Anti Bocor",
      image: "https://image.archify.com/blog/l/qnpuw3ys.jpg",
      price: "RP. 550.000.000",
      room: 5,
      long: 20,
      width: 25),
  House(
      title: "Rumah Raja Majapahit",
      image:
          "https://www.99.co/id/panduan/wp-content/uploads/2022/11/rumah-idaman-1120x630.jpg",
      price: "RP. 1.350.000.000",
      room: 6,
      long: 30,
      width: 40),
  House(
      title: "Rumah Gajayana",
      image:
          "https://img.okezone.com/content/2013/08/01/476/846161/CbFOFpHOyY.jpg",
      price: "RP. 1.150.000.000",
      room: 9,
      long: 25,
      width: 40),
  House(
      title: "Rumah Dewa Wisnu",
      image: "https://asset-a.grid.id/photo/2019/01/08/1439598862.jpg",
      price: "RP. 8.050.000.000",
      room: 12,
      long: 50,
      width: 60),
  House(
      title: "Rumah Petak",
      image: "http://kabar6.com/wp-content/uploads/seorang-56.jpg",
      price: "RP. 200.000.000",
      room: 2,
      long: 6,
      width: 6)
];
