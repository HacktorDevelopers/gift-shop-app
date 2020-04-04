class Gift {
  String name;
  int price;
  GiftType type;
  String descriptions;
  String giftImage;
  int giftCategoryId;

  Gift({this.name, this.price, this.type, this.descriptions, this.giftImage, this.giftCategoryId});

  @override
  String toString() {
    // TODO: implement toString
    super.toString();
    // print('name: $name, type: $type, description: $descriptions, price: $price');
    return 'name: $name, type: $type, description: $descriptions, price: $price';
  }
}

List<Gift> gifts = [
  Gift(name: 'Wrist Watch', price: 0, descriptions: 'This Wrist watch is something', type: GiftType.Free, giftCategoryId: 1, giftImage: 'assets/images/watch0.jpg'),
  Gift(name: 'Wrist Watch', price: 0, descriptions: 'This Wrist watch is something', type: GiftType.Free, giftCategoryId: 1, giftImage: 'assets/images/watch1.jpg'),
  Gift(name: 'Wrist Watch', price: 3000, descriptions: 'This Wrist watch is somethingand it is paid', type: GiftType.Paid, giftCategoryId: 1, giftImage: 'assets/images/watch0.jpg'),
  Gift(name: 'Wrist Watch', price: 0, descriptions: 'This Wrist watch is something', type: GiftType.Free, giftCategoryId: 1, giftImage: 'assets/images/watch1.jpg'),
  Gift(name: 'Wrist Watch', price: 0, descriptions: 'This Wrist watch is something', type: GiftType.Free, giftCategoryId: 1, giftImage: 'assets/images/watch0.jpg'),
  Gift(name: 'Wrist Watch', price: 3500, descriptions: 'This Wrist watch is something', type: GiftType.Paid, giftCategoryId: 1, giftImage: 'assets/images/watch1.jpg'),
  Gift(name: 'Wrist Watch', price: 0, descriptions: 'This Wrist watch is something', type: GiftType.Free, giftCategoryId: 1, giftImage: 'assets/images/watch0.jpg'),
];


enum GiftType {
  Free, Paid, Exchange
}