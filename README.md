# 🚀 콘솔 쇼핑몰
Console Shopping Mall은 Dart를 활용하여 제작한 간단한 콘솔 기반의 쇼핑몰 프로그램입니다.
사용자는 상품 목록을 조회하고, 장바구니에 상품을 추가하며, 총 가격을 확인할 수 있습니다.


![image](https://github.com/user-attachments/assets/db4b7e1a-ba52-4800-9563-85b314fa2ec3)

<br>

## 프로젝트 구조

```
Console-ShoppingMall/
│── bin/
│   ├── domain/
│   │   ├── shopping_mall.dart  # 쇼핑몰의 주요 비즈니스 로직
│   ├── data/
│   │   ├── product.dart         # 상품 정보 (Product 클래스)
│   ├── main.dart                # 프로그램 실행 파일
```

<br>

## 🛠️ 기능 목록
### 1) 상품 목록 보기

쇼핑몰에서 판매 중인 상품 목록을 출력합니다.
![image](https://github.com/user-attachments/assets/257a6153-010e-44bb-b63d-cc533ca6a3c9)


### 2) 장바구니에 상품 담기

상품명을 입력하고, 원하는 개수를 입력하면 장바구니에 추가됩니다.
존재하지 않는 상품을 입력하면 예외 메시지가 출력됩니다.
개수가 0개 이하이면 예외가 발생합니다.
![image](https://github.com/user-attachments/assets/8fea79f0-dd7a-4323-894c-c10f4cace3d1)


### 3) 장바구니의 총 가격 확인

현재 장바구니에 담긴 상품 목록과 총 가격을 출력합니다.
장바구니가 비어있으면 "장바구니에 담긴 상품이 없습니다." 메시지를 출력합니다.

![image](https://github.com/user-attachments/assets/fa7cdd2f-3ad6-4fa6-a0a6-8ddc64ee82df)


### 4) 장바구니 초기화
현재 장바구니에 담긴 상품을 모두 제거하고 총 가격을 초기화합니다.
![image](https://github.com/user-attachments/assets/741c4ce0-f483-4765-912a-3b4aa3f1d984)



### 5) 프로그램 종료
사용자의 입력에 따라 프로그램을 종료할 수 있습니다.
![image](https://github.com/user-attachments/assets/7f87b0eb-f180-4b07-a87a-6ca16579f24b)


