import 'CoffeeItem.dart';

List<CoffeeItem> getCoffeeItems() {
  return [
    CoffeeItem(name: 'Latte', price: 3.80, imagefilename: 'assets/coffee1.png'),
    CoffeeItem(
        name: 'Ice Latte', price: 5.80, imagefilename: 'assets/coffee2.jpeg'),
    CoffeeItem(
        name: 'Ice Mocha', price: 7.80, imagefilename: 'assets/coffee3.jpg'),
    CoffeeItem(
        name: 'Coffee Bean',
        price: 17.80,
        imagefilename: 'assets/quickorder1.png'),
    CoffeeItem(
        name: 'Starbucks',
        price: 9.80,
        imagefilename: 'assets/quickorder2.png'),
  ];
}
