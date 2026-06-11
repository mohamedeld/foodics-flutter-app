class ProductItemModel {
  final String name;
  final String imgUrl;
  final double price;
  final String id;
  final String categoryId;

  ProductItemModel({
    required this.name,
    required this.imgUrl,
    required this.price,
    required this.id,
    required this.categoryId,
  });
}

List<ProductItemModel> foods = [
  ProductItemModel(
    id: 'burger 1',
    name: 'Beef Burger',
    imgUrl:
        'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
    price: 8.5,
    categoryId: '1',
  ),
  ProductItemModel(
    id: 'burger 2',
    name: 'Chicken Burger',
    imgUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8.5,
    categoryId: '1',
  ),
  ProductItemModel(
    id: 'burger 3',
    name: 'Cheese Burger',
    imgUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8,
    categoryId: '1',
  ),
  ProductItemModel(
    id: 'pizza 1',
    name: 'Chicken Pizza',
    imgUrl:
        'https://graficsea.com/wp-content/uploads/2021/12/Chicken-Supreme-Pizza-.png',
    price: 9,
    categoryId: '2',
  ),
  ProductItemModel(
    id: 'pasta 1',
    name: 'Pasta',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
    categoryId: '3',
  ),
  ProductItemModel(
    id: 'pasta 2',
    name: 'Pasta2',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
    categoryId: '4',
  ),
  ProductItemModel(
    id: 'pasta 3',
    name: 'Pasta3',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
    categoryId: '5',
  ),
  ProductItemModel(
    id: 'pasta 4',
    name: 'Pasta4',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
    categoryId: '6',
  ),
];
