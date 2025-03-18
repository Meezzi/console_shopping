import 'entities/product.dart';
import '../utils/input.dart';
import 'dart:io';

// 전체적인 쇼핑몰을 관리하는 클래스
class ShoppingMall {
  // 상품 목록
  List<Product> productList = [
    Product("shirts", 45000),
    Product("onepiece", 30000),
    Product("short sleeves", 35000),
    Product("short pants", 38000),
    Product("socks", 5000),
  ];

  // 장바구니에 담긴 상품들의 총 가격
  int totalPrice = 0;

  List<String> productInCart = [];

  // 상품 목록 출력
  void showProducts() {
    for (Product product in productList) {
      print('${product.productName} / ${product.productPrice}원');
    }
  }

  // 상품을 장바구니에 담기
  void addToCart() {
    try {
      stdout.write('상품 이름을 입력해 주세요 !\n');
      String? product = getUserInput();

      final item = productList.where((e) => e.productName == product);

      if (item.isEmpty) {
        throw Exception('입력값이 올바르지 않아요 !\n');
      }

      stdout.write('상품 개수를 입력해 주세요 !\n');
      int? itemCount = int.parse(getUserInput()!);

      if (itemCount < 1) {
        throw Exception('0개보다 많은 개수의 상품만 담을 수 있어요 !\n');
      }

      productInCart.add(item.first.productName);
      totalPrice += item.first.productPrice * itemCount;
      print('장바구니에 상품이 담겼어요 !\n');
    } catch (e) {
      print('입력값이 올바르지 않아요 !\n');
    }
  }

  // 장바구니에 담은 상품의 총 가격을 출력
  void showTotal() {
    if (productInCart.isEmpty) {
      print('장바구니에 담긴 상품이 없습니다.');
      return;
    }

    print('장바구니에 ${productInCart.join(',')}(이)가 담겨있네요. 총 $totalPrice원 입니다 !\n');
  }

  // 장바구니 초기화
  void resetCart() {
    if (productInCart.isEmpty) {
      print('이미 장바구니가 비어있습니다.');
      return;
    }

    print('장바구니를 초기화합니다.');
    productInCart = [];
    totalPrice = 0;
  }
}
