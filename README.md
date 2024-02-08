# youtube_turorial
youtube Link : https://www.youtube.com/watch?v=8vSF_ws3wtE

## Getting Started
1. Make public repository
2. first commit

## Project contents
- Admin App
- SMS OTP Verification
- Payment Gateway
- product filtering
- product sorting
- statemanagement
- short cuts & tricks
- production level build
- And more...

## github
https://github.com/nanos90/youtube_turorial


## 강의 기록
---
01/31 - 28:26 GetX 영상 보고 다시 하기.

- State Management for Beginners:  • Flutter Best State Management ?  [링크](https://www.youtube.com/watch?v=bzZF5ggktPA&t=0s)

---
01/31 - 1:31:47
firebase에서 DB 생성했고,(Test용으로 30일 이후에는 접속시 인증이 필요)
https://console.firebase.google.com/project/tutorial-a0d1d/firestore/data/~2F?hl=ko
위 링크로 들어가서 Firebase DB 설명 듣고는 그다음 따라 하면 됨.

---
02/06 - 2:26:00
Add Product 구현완료. Get Poduct 구현 시작하면 됨.

---
02/07 - 2:45:05
DB fetch 하고, delete하고, 관리자 앱의 모든 기능 구현 완료.
이제는 클라이언트 앱 개발 시작함.

---
---
---
## 클라이언트 프로그램 (2:45:05)
(클라이언트는 그냥 영상만 보고 목차만 정리함.)
- 파이어 베이스 설정 ( 관리자 페이지와 동일 )
- 로그인 화면 만들기
- 레지스트 화면 만들기 (2:58:53~)
- Home Page UI 만들기 (3:02:10~)
    - 화면 거의 다 구성함.
    - dropdown 버튼 라이브러리 써서 widget으로 만들고,
    - 멀티 선택 dropdown 버튼도 만들고, 함수도 넣고,(약간 랩핑해서 쓰는 느낌.)
    - Product cart도 만들고.
- 제품 누르면 상세 페이지 만들기 (3:35:47)
- 비지니스로직 개발 시작 (3:40:46)
    - Adding Dependencys (3:40:50)
        - getx, firebase_core, firebase_storage등 yarm에 등록
    - Login & Resister User (3:42:54)
        - 로그인 컨트롤러 파일 생성.
    - Firebase Initialization (3:44:52)
        - key입력등의 작업
        - main run에서 초기화 코드 추가. config 작성 등
    - Login & Register User (3:47:26)
        - firebase에 user doc 만들고
        - 모델 만들고, addUser 함수 만들고, textfield 컨트롤러 연결
    - Send OTP (4:06:29)
        - 라이브러리 : otp_text_field_v2 사용함.
        - OTP 생성 및 기능 구현함.
    - SMS Gateway (4:28:42)
        - fast to sms
        - 사이트에 get요청으로 보내면, 응답이 오고, 이걸 가지고, 완료처리랑 위에서 OTP 로직 구성한 것을 사용함.
        - 로그인 화면 연결하고, 로그인 했을 때 로그인한 사용자면 바로 home으로 이동.
            - GetStorage box 사용
            - 로그아웃 버튼에서는 Get.offAll(LoginPage())로 이전에 화면과 메모리 내용 다 리셋하고는 이동하는 방식 사용함.
    - Product Managing (4:59:44)
        - home controller 만들기
        - product 불러와서 home 화면에 표시해주고,필터를 건 경우에는 따로 list를 만들어서 거기에 필터된 내용을 불러오도록 함.
    - Filter Products by brand (5:23:23)
    - Sort Products by cost (5:28:56)
    - Pass Data to next page (5:34:38)
    - Payment Gateway (5:38:09)
        - Razorpay 사용
        - razorpay_flutter 1.3.5 라이브러리 사용
    - Send Order Details (5:59:51)



