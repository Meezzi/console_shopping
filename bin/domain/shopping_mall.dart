import '../data/product.dart';

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

  // 상품 목록 출력
  void showProducts() {
    for (Product product in productList) {
      print('${product.productName} / ${product.productPrice}원');
    }
  }

  // 상품을 장바구니에 담기
  void addToCart() {}

  // 장바구니에 담은 상품의 총 가격을 출력
  void showTotal() {}
}
