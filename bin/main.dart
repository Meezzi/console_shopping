import 'dart:io';
import '../bin/domain/shopping_mall.dart';

void main() {
  var emart = ShoppingMall();

  while (true) {
    stdout.write(
      '[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료\n',
    );

    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        emart.showProducts();
        break;
      case '2':
        emart.addToCart();
        break;
      case '3':
        emart.showTotal();
        break;
      case '4':
        print('정말 종료하시겠습니까?');
        String? isEnd = stdin.readLineSync();
      default:
        print('지원하지 않는 기능입니다 ! 다시 시도해 주세요 ..');
        break;
    }
  }
}
