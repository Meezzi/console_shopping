import '../data/product.dart';

// 전체적인 쇼핑몰을 관리하는 클래스
class ShoppingMall {
  // 상품 목록
  List<Product> productList = [
    Product("셔츠", 45000),
    Product("원피스", 30000),
    Product("반팔티", 35000),
    Product("반바지", 38000),
    Product("양말", 5000),
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
