class Gift {
  String name;
  int price;
  GiftType type;
  String descriptions;
  List<String> giftImage;
  int giftCategoryId;

  Gift(
      {this.name,
      this.price,
      this.type,
      this.descriptions,
      this.giftImage,
      this.giftCategoryId});

  @override
  String toString() {
    // TODO: implement toString
    super.toString();
    // print('name: $name, type: $type, description: $descriptions, price: $price');
    return 'name: $name, type: $type, description: $descriptions, price: $price';
  }
}

List<Gift> gifts = [
  Gift(
      name: 'Italian Shoe',
      price: 0,
      descriptions: 'This Wrist watch is something',
      type: GiftType.Free,
      giftCategoryId: 1,
      giftImage: [
        'https://i.pinimg.com/236x/42/8b/86/428b868b90f10ddd27c5f56102aefd89.jpg',
      ]),
  Gift(
      name: 'Lazy man shoes',
      price: 0,
      descriptions: 'This Wrist watch is something',
      type: GiftType.Free,
      giftCategoryId: 1,
      giftImage: [
        'https://ng.pricenacdn.com/files/images/products/original/164/Fashion-Streamce-Shop-Fashion-Suede-Beanie-Shoes-Lazy-Mens-Shoes-Driving-Shoes-Single-Shoes_3603607_855e79868e1cb61a19d6577cb12fa4dc_t.jpg?d=ax300',
        'https://ng.pricenacdn.com/files/images/products/original/164/Fashion-Streamce-Shop-Fashion-Suede-Beanie-Shoes-Lazy-Mens-Shoes-Driving-Shoes-Single-Shoes_3603607_34f6f4e3717603f250bbd6173b9ab3bd.jpg?d=ax300',
        'https://ng.pricenacdn.com/files/images/products/original/164/Fashion-Streamce-Shop-Fashion-Suede-Beanie-Shoes-Lazy-Mens-Shoes-Driving-Shoes-Single-Shoes_3603607_d18ec280b8ae52391e1f5bc29825cab4.jpg?d=ax300'
      ]),
  Gift(
      name: 'Shirt Sparkles',
      price: 3000,
      descriptions: 'This Wrist watch is somethingand it is paid',
      type: GiftType.Paid,
      giftCategoryId: 1,
      giftImage: [
        'https://ng.pricenacdn.com/files/images/products/original/168/Rukari-Black-Diamond-Crested-Polo-Shirt-White_1499412_6b52b32a334e8824ea2ab4ff548bc4d9_t.jpg?d=ax300',
        'https://ng.pricenacdn.com/files/images/products/original/171/Chrysolite-Designs-Super-Man-Polo-T-Shirt-Black_3645489_a39073f62013134ea5fe494ef9e5550f.jpg?d=ax300'
      ]),
  Gift(
      name: 'Samsung Phone',
      price: 0,
      descriptions: 'This Wrist watch is something',
      type: GiftType.Free,
      giftCategoryId: 1,
      giftImage: [
        'https://ng.pricenacdn.com/img?d=ax300&src=https%3A%2F%2Fng.jumia.is%2Funsafe%2Ffit-in%2F500x500%2Ffilters%3Afill%28white%29%2Fproduct%2F12%2F907901%2F2.jpg',
        'https://ng.pricenacdn.com/img?d=ax300&src=https%3A%2F%2Fng.jumia.is%2Funsafe%2Ffit-in%2F500x500%2Ffilters%3Afill%28white%29%2Fproduct%2F12%2F907901%2F1.jpg'
      ]),
//  Gift(
//      name: 'Wrist Watch',
//      price: 0,
//      descriptions: 'This Wrist watch is something',
//      type: GiftType.Free,
//      giftCategoryId: 1,
//      giftImage: 'assets/images/watch0.jpg'),
//  Gift(
//      name: 'Wrist Watch',
//      price: 3500,
//      descriptions: 'This Wrist watch is something',
//      type: GiftType.Paid,
//      giftCategoryId: 1,
//      giftImage: 'assets/images/watch1.jpg'),
//  Gift(
//      name: 'Wrist Watch',
//      price: 0,
//      descriptions: 'This Wrist watch is something',
//      type: GiftType.Free,
//      giftCategoryId: 1,
//      giftImage: 'assets/images/watch0.jpg'),
];

enum GiftType { Free, Paid, Exchange }
