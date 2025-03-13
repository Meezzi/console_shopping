import 'dart:io';
import '../bin/domain/shopping_mall.dart';

void main() {
  while (true) {
    stdout.write(
      '[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료\n',
    );

    String? input = stdin.readLineSync();

    var emart = ShoppingMall();

    switch (input) {
      case '1':
        emart.showProducts();
        break;
      default:
        print('지원하지 않는 기능입니다 ! 다시 시도해 주세요 ..');
        break;
    }
  }
}
